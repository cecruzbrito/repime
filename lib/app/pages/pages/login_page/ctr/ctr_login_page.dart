import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/locador/db/locador_db.dart';
import 'package:repime/app/blocs/locador/locador.dart';
import 'package:repime/app/pages/controller/main_controller.dart';
import 'package:repime/config/routes_app/routes_app.dart';

import '../../../../global_widgets/snack_bar_app/snack_bar_app.dart';
part 'ctr_login_page.g.dart';

class CtrLoginPage = _CtrLoginPageBase with _$CtrLoginPage;

abstract class _CtrLoginPageBase with Store {
  @observable
  var keyScaffold = GlobalKey<ScaffoldState>();

  @observable
  var ctrUsuario = TextEditingController();

  @observable
  var ctrSenha = TextEditingController();

  @observable
  var loading = false;

  @action
  void _setLoading(bool value) => loading = value;

  onTapLogin() async {
    _setLoading(true);

    try {
      var loc = await LocadorDB.makeLogin(ctrUsuario.text, ctrSenha.text);
      if (loc == null) {
        _setLoading(false);
        return ScaffoldMessenger.of(keyScaffold.currentContext!).showSnackBar(
            SnackBarApp.show(text: 'Nome de Usuario/Senha incorretos', context: keyScaffold.currentContext!));
      }
      await loc.setCache();
      Modular.get<MainController>().setLocadorAtual(loc);
      Modular.to.pushNamed(RouteApp.homePage.name);
    } on Exception catch (e) {
      ScaffoldMessenger.of(keyScaffold.currentContext!).showSnackBar(
          SnackBarApp.show(text: 'Ocorreu um erro. Tente novamente.', context: keyScaffold.currentContext!));
    }

    _setLoading(false);
  }

  void onTapRegistrar() {
    Modular.to.pushNamed(RouteApp.registrarLocadorPage.name);
  }
}
