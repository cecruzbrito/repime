import 'package:repime/app/blocs/residencia/residencia.dart';

class Republica extends Residencia {
  String nome;
  bool isTrote;
  DateTime dateFundacao;
  Republica(
      {required super.cidade,
      required super.id,
      required super.tipo,
      required super.endereco,
      required this.dateFundacao,
      required this.nome,
      required super.idLocador,
      required this.isTrote});

  String get dateFormated => "${dateFundacao.day}/${dateFundacao.month}/${dateFundacao.year}";

  String get nameTrote => isTrote ? 'É feito trotes!' : 'Não é feito trotes';
}
