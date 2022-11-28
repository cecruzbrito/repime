import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/pages/first_page/first_page.dart';
import 'package:repime/config/routes_app/guards/first_page/first_page_guard.dart';

import '../../app/pages/home_page/home_page.dart';
import '../../app/pages/registrar_locador_page/registrar_locador_page.dart';

class RouteApp {
  String name;
  Widget route;
  List<RouteGuard>? guards;
  RouteApp({required this.name, required this.route, this.guards});

  ChildRoute get childRoute => ChildRoute(name, child: (context, args) => route, guards: guards ?? []);

  static RouteApp firstPage = RouteApp(name: '/', guards: [FirstPageCheckCache()], route: const FirstPage());
  static RouteApp homePage = RouteApp(name: '/homePage', route: const HomePage());
  static RouteApp registrarLocadorPage =
      RouteApp(name: '/registrarLocadorPage', route: const RegistrarLocadorPage());
}
