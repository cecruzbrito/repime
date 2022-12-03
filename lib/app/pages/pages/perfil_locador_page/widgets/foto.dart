import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../global_widgets/button_back_app/button_back_app.dart';
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
          );
        }),
        ButtonBackApp()
      ],
    );
  }
}
