import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/button_text_app/button_text_app.dart';

import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

class ButtonContinue extends StatelessWidget {
  const ButtonContinue({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (!(ctrRegistrarLocadorPage.ctrTextNome.text.length > 0 &&
          ctrRegistrarLocadorPage.ctrTextSenha.text.length > 0)) return Container();
      return Align(
        alignment: Alignment.bottomCenter,
        child: ButtonTextApp(
          text: 'Continue',
          onPressed: ctrRegistrarLocadorPage.onTapContinue,
        ),
      );
    });
  }
}
