import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/pages/first_page/first_page.dart';

class RouteApp {
  String name;
  Widget route;

  RouteApp({required this.name, required this.route});

  ChildRoute get childRoute => ChildRoute(name, child: (context, args) => route);

  static RouteApp firstPage = RouteApp(name: '/', route: const FirstPage());
}
