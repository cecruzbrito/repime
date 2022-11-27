import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/blocs/locatario/db/locatario_db.dart';
import 'package:repime/config/routes_app/routes_app.dart';

class FirstPageCheckCache extends RouteGuard {
  FirstPageCheckCache() : super(redirectTo: RouteApp.homePage.name);

  @override
  Future<bool> canActivate(String path, ModularRoute route) async => (await LocatarioDB.getCache()) == null;
}
