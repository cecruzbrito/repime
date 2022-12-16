import 'package:repime/app/blocs/residencia/blocs/republica/republica.dart';

import '../residencia/residencia.dart';

class Vaga {
  int id, idResidencia;
  String mensalidade;
  String informacoes;
  List<String> fotos;
  DateTime date;
  Residencia residencia;
  Vaga(
      {required this.id,
      required this.idResidencia,
      required this.informacoes,
      required this.mensalidade,
      required this.fotos,
      required this.date,
      required this.residencia,
      this.rep});

  Republica? rep;

  set setRep(Republica value) => rep;

  String get mensalidadeFormatada => 'R\$$mensalidade';

  String get daysPosted {
    var d = DateTime.now().difference(date);
    switch (d.inDays) {
      case 0:
        return "Hoje";
      case 1:
        return "Ontem";
      default:
        return "${d.inDays} dias atrás";
    }
  }
}
