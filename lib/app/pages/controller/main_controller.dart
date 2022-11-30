import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/locador/locador.dart';
import 'package:repime/app/blocs/locatario/locatario.dart';

class MainController {
  @observable
  var locatarioAtual = Locatario.zero;

  @action
  void setLocatarioAtual(Locatario value) {
    locatarioAtual = value;
  }

  @observable
  var locadorAtual = Locador.zero;

  @action
  void setLocadorAtual(Locador value) => locadorAtual = value;
}
