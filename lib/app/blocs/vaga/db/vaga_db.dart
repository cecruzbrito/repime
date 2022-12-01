import 'dart:convert';

import 'package:repime/app/blocs/connection_database/connection_database.dart';
import 'package:repime/app/blocs/residencia/db/residencia_db.dart';
import 'package:repime/app/blocs/util/cache_manager/cache_utility.dart';

import '../../cidade/cidade.dart';
import '../../residencia/residencia.dart';
import '../vaga.dart';

class VagaDB extends Vaga {
  VagaDB(
      {required super.id,
      required super.idResidencia,
      required super.informacoes,
      required super.fotos,
      required super.mensalidade});

  Future<void> getFotos({int limit = 0}) async {
    var result = limit > 0
        ? await ConnectionDataBase().make(QueryDataBase(
            commandSQL: 'SELECT * FROM foto_vaga as v WHERE v.id_vaga = @idVaga LIMIT @numLimit',
            arguments: {'numLimit': limit, 'idVaga': id}))
        : await ConnectionDataBase().make(QueryDataBase(
            commandSQL: 'SELECT * FROM foto_vaga as v WHERE v.id_vaga = @idVaga', arguments: {'idVaga': id}));
    var fotos = <String>[];
    for (var r in result) {
      fotos.add(r['foto_vaga']!['foto']);
    }

    fotos = fotos;
  }

  setFotosTemp() async {
    for (var i = 0; i < fotos.length; i++) {
      fotos[i] = await CacheUtility.setImage(base64Decode(fotos[0]), _pathFile(i), isTemp: true);
    }
  }

  String _pathFile(int index) => 'locador_${index}_$id';

  static Future<List<Vaga>> getVagasPerCidade(Cidade c) async {
    var result = await ConnectionDataBase().make(QueryDataBase(
        commandSQL:
            'SELECT v.* FROM vaga as v JOIN residencia as r ON r.id = v.id_residencia WHERE r.id_cidade = @idCidade',
        arguments: {'idCidade': c.id}));
    var vagas = <Vaga>[];
    for (var r in result) {
      vagas.add(VagaDB.fromJson(r));
    }
    return vagas;
  }

  static setDados(Vaga v) async {
    await ConnectionDataBase().make(QueryDataBase(
        commandSQL: "SELECT * FROM adicionarVaga(@mens, @info, @idR, @fotos)",
        arguments: {'mens': v.mensalidade, 'info': v.informacoes, 'idR': v.idResidencia, 'fotos': v.fotos}));
  }

  Future<Residencia> getDadosResidencia() async => ResidenciaDB.getEspecificResidencia(this);

  factory VagaDB.fromJson(j) => VagaDB(
      fotos: [],
      id: j['vaga']['id'],
      idResidencia: j['vaga']['id_residencia'],
      informacoes: j['vaga']['informacoes_adicionais'],
      mensalidade: '${j['vaga']['mensalidade']}');

  factory VagaDB.toDB(Vaga v) => VagaDB(
      id: v.id,
      idResidencia: v.idResidencia,
      informacoes: v.informacoes,
      fotos: v.fotos,
      mensalidade: v.mensalidade);
}
