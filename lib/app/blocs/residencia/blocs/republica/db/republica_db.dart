import 'package:repime/app/blocs/connection_database/connection_database.dart';
import 'package:repime/app/blocs/residencia/blocs/republica/republica.dart';

import '../../../../locador/locador.dart';
import '../../../residencia.dart';

class RepublicaDB extends Republica {
  RepublicaDB(
      {required super.cidade,
      required super.id,
      required super.tipo,
      required super.endereco,
      required super.dateFundacao,
      required super.nome,
      required super.idLocador,
      required super.isTrote});

  static getRepublica(Residencia residencia) async {
    var result = await ConnectionDataBase().make(QueryDataBase(
        commandSQL: "  SELECT  nome, trotes, fundacao  FROM republica WHERE id_residencia = @idR   ",
        arguments: {'idR': residencia.id}));

    return RepublicaDB.repFromJson(result[0]['republica'], residencia);
  }

  factory RepublicaDB.repFromJson(j, Residencia res) => RepublicaDB(
      idLocador: res.idLocador,
      cidade: res.cidade,
      id: res.id,
      tipo: res.tipo,
      endereco: res.endereco,
      dateFundacao: DateTime.parse('${j['fundacao']}'),
      nome: j['nome'],
      isTrote: j['trotes']);

  static insercaoRepublica({required Locador locador, required Republica republica}) async =>
      await ConnectionDataBase().make(QueryDataBase(commandSQL: """
    SELECT  *  FROM adiciona_locador_residencia_republica( @nomeL, @senhaL, @contatoL, @fotoL, @idCidade, @tipoR, @lat, @long, @endR,@nomeR, @trotesR, @fund );
 """, arguments: {
        'nomeL': locador.nome,
        'senhaL': locador.senha,
        'contatoL': locador.contato,
        'fotoL': locador.foto,
        'idCidade': republica.cidade.id,
        'tipoR': republica.tipo.toNameDB(),
        'lat': republica.endereco.lat,
        'long': republica.endereco.log,
        'endR': republica.endereco.endereco,
        'nomeR': republica.nome,
        'trotesR': republica.isTrote,
        'fund': republica.dateFundacao
      }));
}
