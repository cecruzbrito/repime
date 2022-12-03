import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../button_icon/button_icon_app.dart';

class ButtonBackApp extends StatelessWidget {
  const ButtonBackApp({super.key, this.tap, this.isAlternative = true, this.padding = true});
  final Function()? tap;
  final bool isAlternative;
  final bool padding;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: !padding ? EdgeInsets.zero : EdgeInsets.only(top: size.height * .03, left: size.width * .05),
      child: ButtonIconApp(
        colorButton: !isAlternative ? Colors.black : Colors.white,
        colorIcon: !isAlternative ? Colors.black : Colors.white,
        sizeIcon: size.height * .03,
        isAlternative: !isAlternative,
        icon: Icons.arrow_back,
        onPressed: tap ?? Modular.to.pop,
      ),
    );
  }
}
