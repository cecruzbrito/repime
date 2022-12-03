import 'package:repime/app/blocs/cidade/cidade.dart';
import 'package:repime/app/blocs/cidade/db/cidade_db.dart';
import 'package:repime/app/blocs/connection_database/connection_database.dart';
import 'package:repime/app/blocs/residencia/blocs/endereco/db/endereco_db.dart';
import 'package:repime/app/blocs/residencia/residencia.dart';

import '../../locador/locador.dart';
import '../../util/enum_tipos_residencia/enum_tipo_residencia.dart';
import '../../vaga/vaga.dart';

class ResidenciaDB extends Residencia {
  ResidenciaDB(
      {required super.cidade,
      required super.id,
      required super.tipo,
      required super.idLocador,
      required super.endereco});

  static Future<ResidenciaDB> getAll(Locador locador) async {
    var r = await ConnectionDataBase().make(
      QueryDataBase(
          commandSQL:
              'SELECT r.id, r.tipo, r.id_locador, r.id_cidade, (endereco).latitude, (endereco).longitude , (endereco).endereco  ,c.*, l.* FROM residencia as r JOIN cidade as c ON c.id = r.id_cidade JOIN locador l ON l.id = r.id_locador WHERE r.id_locador = @idLocador',
          arguments: {'idLocador': locador.id}),
    );
    return ResidenciaDB.fromJson(r[0]);
  }

  static getResidencias() async {}

  static Future<ResidenciaDB> getEspecificResidencia(Vaga v) async {
    var result = await ConnectionDataBase().make(QueryDataBase(
        commandSQL:
            'SELECT r.id, r.tipo, r.id_locador, r.id_cidade, (endereco).latitude, (endereco).longitude , (endereco).endereco  ,c.* FROM residencia as r JOIN cidade as c ON c.id = r.id_cidade WHERE r.id = @idR',
        arguments: {'idR': v.idResidencia}));
    return ResidenciaDB.fromJson(result[0]);
  }

  static Future<void> inserirResidencia(Residencia residencia, Locador locador) async {
    await ConnectionDataBase().make(QueryDataBase(
        commandSQL:
            'SELECT * FROM adiciona_locador_residencia( @nomeL, @senhaL, @contatoL, @fotoL, @idCidade, @lat, @long, @endr )',
        arguments: {
          'nomeL': locador.nome,
          'senhaL': locador.senha,
          'contatoL': locador.contato,
          'fotoL': locador.foto,
          'idCidade': residencia.cidade.id,
          'lat': residencia.endereco.lat,
          'long': residencia.endereco.lat,
          'endr': residencia.endereco.endereco
        }));
  }

  factory ResidenciaDB.fromJsonHome(j) => ResidenciaDB(
      idLocador: j['residencia']['id_locador'],
      id: j['residencia']['id'],
      tipo: EnumTiposResidencia.fromJson(j['residencia']),
      cidade: Cidade(id: 00, nome: 'nome', uf: 'uf', pais: 'pais'),
      endereco: EnderecoDB.fromJson(j));

  factory ResidenciaDB.fromJson(j) => ResidenciaDB(
      idLocador: j['residencia']['id_locador'],
      id: j['residencia']['id'],
      tipo: EnumTiposResidencia.fromJson(j['residencia']),
      cidade: CidadeDB.fromJson(j),
      endereco: EnderecoDB.fromJson(j));

  factory ResidenciaDB.fromCache(j) {
    var x = j['residencia']['residencia']['cidade'];
    return ResidenciaDB(
        id: j['residencia']['residencia']['id'],
        idLocador: j['residencia']['residencia']['id_locador'],
        tipo: EnumTiposResidencia.fromJson(j['residencia']),
        cidade: CidadeDB.fromJson(x),
        endereco: EnderecoDB.fromJson(j['residencia']['residencia']['']));
  }

  toJson() => {
        'residencia': {
          'id_locador': idLocador,
          'id': id,
          'tipo': tipo.toJson(),
          'cidade': CidadeDB.toDB(cidade).toJson(),
          '': EnderecoDB.toDB(endereco).toJson()
        }
      };

  static ResidenciaDB toDB(Residencia r) =>
      ResidenciaDB(cidade: r.cidade, endereco: r.endereco, id: r.id, tipo: r.tipo, idLocador: r.idLocador);
}
