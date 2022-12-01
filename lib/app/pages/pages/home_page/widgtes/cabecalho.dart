import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/pages/controller/main_controller.dart';
import 'package:repime/config/routes_app/routes_app.dart';

import '../../../../blocs/locador/db/locador_db.dart';
import '../../../../blocs/vaga/db/vaga_db.dart';
import '../../../../global_widgets/button_icon/button_icon_app.dart';

class Cabecalho extends StatelessWidget {
  Cabecalho({super.key});

  final _locatario = Modular.get<MainController>().locatarioAtual;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonIconApp(
              icon: Icons.person,
              onPressed: () async {
                Modular.to.pushNamed(RouteApp.registrarLocadorPage.name);
              },
              sizeIcon: size.height * .03,
              isAlternative: true,
            ),
            ButtonIconApp(
              icon: Icons.add,
              onPressed: () {
                Modular.to.pushNamed(RouteApp.adicionarVaga.name);
              },
              sizeIcon: size.height * .03,
            ),
          ],
        ),
        SizedBox(
          height: size.height * .04,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cidade',
              style: TextStyle(fontSize: size.height * .015, color: Colors.grey),
            ),
            SizedBox(height: size.height * .01),
            Text(
              _locatario.cidade.nome,
              style:
                  TextStyle(fontSize: size.height * .035, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: size.height * .01),
            Divider(),
          ],
        ),
      ],
    );
  }
}
