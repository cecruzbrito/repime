import 'package:repime/app/blocs/connection_database/connection_database.dart';
import 'package:repime/app/blocs/residencia/blocs/republica/republica.dart';

import '../../../../locador/locador.dart';

class RepublicaDB extends Republica {
  RepublicaDB(
      {required super.cidade,
      required super.id,
      required super.tipo,
      required super.endereco,
      required super.dateFundacao,
      required super.nome,
      required super.isTrote});

  static inserirRepublica(Republica republica) async {
    await ConnectionDataBase().make(QueryDataBase(
        commandSQL:
            'INSERT INTO republica (id_residencia, nome, trotes, fundacao) VALUES (@id, @nome_r, @trotes_r, @fundacao_r)',
        arguments: {
          'id': republica.id,
          'nome_r': republica.nome,
          'trotes_r': republica.isTrote,
          'fundacao_r': republica.dateFundacao
        }));
  }

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
