import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/blocs/locador/db/locador_db.dart';
import 'package:repime/app/blocs/locatario/db/locatario_db.dart';
import 'package:repime/config/routes_app/routes_app.dart';

import '../../../../app/pages/controller/main_controller.dart';

class FirstPageCheckCache extends RouteGuard {
  FirstPageCheckCache() : super(redirectTo: RouteApp.homePage.name);

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    var locatarioDB = await LocatarioDB.getCache();
    if (locatarioDB != null) {
      Modular.get<MainController>().setLocatarioAtual(locatarioDB);
    }
    var locadorDB = await LocadorDB.getCache();
    if (locadorDB != null) {
      Modular.get<MainController>().setLocadorAtual(locadorDB);
    }
    return (locatarioDB) == null;
  }
}
