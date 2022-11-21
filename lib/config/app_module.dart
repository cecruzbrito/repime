import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/config/routes_app.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [RouteApp.home.childRoute];
}
