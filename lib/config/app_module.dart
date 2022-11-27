import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/config/routes_app/routes_app.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [RouteApp.firstPage.childRoute, RouteApp.homePage.childRoute];
}
