import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../config/routes_app/routes_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () async {
            Modular.to.navigate(RouteApp.registrarLocadorPage.name);
          },
          child: Container(
            height: 50,
            width: 50,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
