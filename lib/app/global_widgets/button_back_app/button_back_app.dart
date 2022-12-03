import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../button_icon/button_icon_app.dart';

class ButtonBackApp extends StatelessWidget {
  const ButtonBackApp({super.key, this.tap});
  final Function()? tap;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * .03, left: size.width * .05),
      child: ButtonIconApp(
        colorButton: Colors.white,
        colorIcon: Colors.white,
        sizeIcon: size.height * .03,
        isAlternative: true,
        icon: Icons.arrow_back,
        onPressed: tap ?? Modular.to.pop,
      ),
    );
  }
}
