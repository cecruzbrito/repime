import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/locador/locador.dart';
import 'package:repime/app/blocs/locatario/locatario.dart';

import 'package:mobx/mobx.dart';
part 'main_controller.g.dart';

class MainController = _MainControllerBase with _$MainController;

abstract class _MainControllerBase with Store {
  @observable
  var locatarioAtual = Locatario.zero;

  @action
  void setLocatarioAtual(Locatario value) {
    locatarioAtual = value;
  }

  @observable
  var locadorAtual = Locador.zero;

  @action
  void setLocadorAtual(Locador value) {
    locadorAtual = value;
  }

  @computed
  bool get isValid => locadorAtual.id != 0;
}
