import 'package:repime/app/blocs/connection_database/connection_database.dart';

import '../vaga.dart';

class VagaDB extends Vaga {
  VagaDB(
      {required super.id,
      required super.idResidencia,
      required super.informacoes,
      required super.fotos,
      required super.mensalidade});

  Future<List<String>> getFotos() async {
    var listV = await ConnectionDataBase().make(QueryDataBase(
        commandSQL: 'SELECT * FROM foto_vaga as v WHERE v.id_vaga = @idVaga', arguments: {'idVaga': id}));
    var list = <String>[];
    for (var l in listV) {
      list.add(l['foto_vaga']!['foto']);
    }
    return list;
  }

  static setDados(Vaga v) async {
    await ConnectionDataBase().make(QueryDataBase(
        commandSQL: "SELECT * FROM adicionarVaga(@mens, @info, @idR, @fotos)",
        arguments: {'mens': v.mensalidade, 'info': v.informacoes, 'idR': v.idResidencia, 'fotos': v.fotos}));
  }
}
