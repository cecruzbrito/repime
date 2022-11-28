import 'package:repime/app/blocs/locatario/locatario.dart';

class MainController {
  var locatarioAtual = Locatario.zero;

  void setLocatarioAtual(Locatario value) => locatarioAtual = value;
}
