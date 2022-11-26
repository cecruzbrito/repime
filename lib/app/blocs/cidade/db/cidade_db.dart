import 'package:repime/app/blocs/cidade/cidade.dart';

import '../../connection_database/connection_database.dart';

class CidadeDB extends Cidade {
  CidadeDB({required super.id, required super.nome, required super.uf, required super.pais});

  factory CidadeDB.fromJson(j) {
    var city = CidadeDB(
        id: j['cidade']['id'], nome: j['cidade']['nome'], pais: j['cidade']['pais'], uf: j['cidade']['uf']);

    return city;
  }

  Map<String, Map<String, String>> toJson() => {
        'cidade': {'id': '$id', 'nome': nome, 'uf': uf, 'pais': pais}
      };

  static Future<List<CidadeDB>> getCidadesFromDataBase() async {
    var cidades = <CidadeDB>[];
    var result = await ConnectionDataBase().makeSelection(QueryDataBase(commandSQL: "SELECT * FROM cidade"));
    for (var r in result) {
      cidades.add(CidadeDB.fromJson(r));
    }
    return cidades;
  }
}
