import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../global_widgets/button_icon/button_icon_app.dart';
import '../../../controller/main_controller.dart';

class Foto extends StatelessWidget {
  const Foto({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var loc = Modular.get<MainController>().locadorAtual;

    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Builder(builder: (_) {
          if (loc.foto == null) {
            return Container(
              height: size.height * .4,
              width: size.height,
              color: Colors.grey[300],
            );
          }
          return Image.file(
            File(loc.foto!),
            fit: BoxFit.cover,
            height: size.height * .4,
            width: size.height,
            errorBuilder: (___, __, _) => SizedBox(
              height: size.height * .4,
              width: size.height,
            ),
          );
        }),
        Padding(
          padding: EdgeInsets.only(top: size.height * .03, left: size.width * .05),
          child: ButtonIconApp(
            colorButton: Colors.white,
            colorIcon: Colors.white,
            sizeIcon: size.height * .03,
            isAlternative: true,
            icon: Icons.arrow_back,
            onPressed: Modular.to.pop,
          ),
        )
      ],
    );
  }
}
