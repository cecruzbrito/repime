import 'package:repime/app/blocs/connection_database/connection_database.dart';
import 'package:repime/app/blocs/residencia/blocs/republica/republica.dart';

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
}
