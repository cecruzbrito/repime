import 'package:repime/app/blocs/cidade/cidade.dart';
import 'package:repime/app/blocs/universidade/db/universidade_db.dart';

import '../../connection_database/connection_database.dart';
import '../../universidade/universidade.dart';

class CidadeDB extends Cidade {
  CidadeDB({required super.id, required super.nome, required super.uf, required super.pais});

  factory CidadeDB.fromJson(j) {
    var city = CidadeDB(
        id: j['cidade']['id'], nome: j['cidade']['nome'], pais: j['cidade']['pais'], uf: j['cidade']['uf']);

    city.adicionarList = _getUniversidades(j);
    return city;
  }

  static List<Universidade> _getUniversidades(json) {
    if (json['universidades'] == null) return [];
    var universidades = <Universidade>[];
    for (var j in json) {
      universidades.add(UniversidadeDB.fromJson(j));
    }
    return universidades;
  }

  toJson() {
    var jsonUniversidade = (universidades.cast<UniversidadeDB>()).map((e) => e.toJson()).toList();
    var json = {
      'cidade': {'id': id, 'nome': nome, 'uf': uf, 'pais': pais, 'universidades': jsonUniversidade}
    };
    return json;
  }

  static Future<List<CidadeDB>> getCidadesFromDataBase() async {
    var cidades = <CidadeDB>[];
    var result = await ConnectionDataBase().make(QueryDataBase(commandSQL: "SELECT * FROM cidade"));
    for (var r in result) {
      cidades.add(CidadeDB.fromJson(r));
    }
    return cidades;
  }

  static CidadeDB toDB(Cidade c) {
    var db = CidadeDB(id: c.id, nome: c.nome, uf: c.uf, pais: c.pais);
    db.adicionarList = c.universidades;
    return db;
  }
}
