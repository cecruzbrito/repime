import 'dart:convert';

import 'package:repime/app/blocs/connection_database/connection_database.dart';
import 'package:repime/app/blocs/residencia/blocs/republica/db/republica_db.dart';
import 'package:repime/app/blocs/residencia/db/residencia_db.dart';
import 'package:repime/app/blocs/util/cache_manager/cache_utility.dart';

import '../../cidade/cidade.dart';
import '../../residencia/residencia.dart';
import '../vaga.dart';

class VagaDB extends Vaga {
  VagaDB(
      {required super.id,
      required super.date,
      required super.idResidencia,
      required super.informacoes,
      super.rep,
      required super.fotos,
      required super.residencia,
      required super.mensalidade});

  Future<Vaga> getFotos({int limit = 0}) async {
    var result = limit > 0
        ? await ConnectionDataBase().make(QueryDataBase(
            commandSQL: 'SELECT * FROM foto_vaga as v WHERE v.id_vaga = @idVaga LIMIT @numLimit',
            arguments: {'numLimit': limit, 'idVaga': id}))
        : await ConnectionDataBase().make(QueryDataBase(
            commandSQL: 'SELECT * FROM foto_vaga as v WHERE v.id_vaga = @idVaga', arguments: {'idVaga': id}));

    fotos.clear();
    for (var r in result) {
      fotos.add(r['foto_vaga']!['foto']);
    }
    await _setFotosTemp();
    return this;
  }

  Future<void> _setFotosTemp() async {
    for (var i = 0; i < fotos.length; i++) {
      fotos[i] = await CacheUtility.setImage(base64Decode(fotos[i]), _pathFile(i), isTemp: true);
    }
  }

  String _pathFile(int index) => 'locador_${index}_$id';

  static Future<List<Vaga>> getVagasPerCidade(Cidade c) async {
    var result = await ConnectionDataBase().make(QueryDataBase(
        commandSQL:
            """SELECT v.*, r.id, r.tipo, r.id_locador, r.id_cidade, (r.endereco).latitude, (r.endereco).longitude , (r.endereco).endereco
             FROM vaga as v JOIN residencia as r ON r.id = v.id_residencia WHERE r.id_cidade = @idCidade""",
        arguments: {'idCidade': c.id}));
    var vagas = <Vaga>[];
    for (var r in result) {
      var vTemp = fromJson(r, ResidenciaDB.fromJsonHome(r));
      if (vTemp.residencia.tipo.isRepublica) {
        vTemp = Vaga(
            id: vTemp.id,
            idResidencia: vTemp.idResidencia,
            informacoes: vTemp.informacoes,
            mensalidade: vTemp.mensalidade,
            fotos: vTemp.fotos,
            date: vTemp.date,
            rep: await RepublicaDB.getRepublica(vTemp.residencia),
            residencia: vTemp.residencia);
      }
      vagas.add(vTemp);
    }
    return vagas;
  }

  static setDados(
      {required String mensalidade,
      required String info,
      required int idResidencia,
      required List<String> fotos}) async {
    await ConnectionDataBase().make(QueryDataBase(
        commandSQL: "SELECT * FROM adicionarVaga(@mens, @info, @idR, @fotos)",
        arguments: {'mens': mensalidade, 'info': info, 'idR': idResidencia, 'fotos': fotos}));
  }

  static Future<void> deleteVaga(int idVaga) async {
    await ConnectionDataBase().make(
        QueryDataBase(commandSQL: "DELETE FROM vaga WHERE id = @idVaga", arguments: {'idVaga': idVaga}));
  }

  Future<Residencia> getDadosResidencia() async => await ResidenciaDB.getEspecificResidencia(this);

  static Vaga fromJson(j, Residencia r) {
    return Vaga(
        fotos: [],
        residencia: r,
        date: DateTime.parse("${j['vaga']['dt_insercao']}"),
        id: j['vaga']['id'],
        idResidencia: j['vaga']['id_residencia'],
        informacoes: j['vaga']['informacoes_adicionais'],
        mensalidade: '${j['vaga']['mensalidade']}');
  }

  factory VagaDB.toDB(Vaga v) {
    var va = VagaDB(
        id: v.id,
        residencia: v.residencia,
        date: v.date,
        idResidencia: v.idResidencia,
        informacoes: v.informacoes,
        fotos: v.fotos,
        rep: v.rep,
        mensalidade: v.mensalidade);
    return va;
  }
}
