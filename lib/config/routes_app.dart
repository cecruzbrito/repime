import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/pages/home/home.dart';

class RouteApp {
  String name;
  Widget route;

  RouteApp({required this.name, required this.route});

  ChildRoute get childRoute => ChildRoute(name, child: (context, args) => route);

  static RouteApp home = RouteApp(name: '/', route: const Home());
}
