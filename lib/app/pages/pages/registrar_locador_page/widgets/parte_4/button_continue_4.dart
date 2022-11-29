import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/button_text_app/button_text_app.dart';

import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

class ButtonContinue4 extends StatelessWidget {
  const ButtonContinue4({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (!(ctrRegistrarLocadorPage.ctrNomeRepublica.text.length > 0 &&
              ctrRegistrarLocadorPage.ctrEnderecoResidencia.text.length > 0 &&
              ctrRegistrarLocadorPage.ctrFundacaoDia.text.length > 0 &&
              ctrRegistrarLocadorPage.ctrFundacaoMes.text.length > 0 &&
              ctrRegistrarLocadorPage.ctrFundacaoAno.text.length > 0) &&
          ctrRegistrarLocadorPage.isRepublica) {
        return Container();
      }
      if (!(ctrRegistrarLocadorPage.ctrEnderecoResidencia.text.length > 0) &&
          !ctrRegistrarLocadorPage.isRepublica) {
        return Container();
      }
      return ButtonTextApp(text: 'Salvar', onPressed: ctrRegistrarLocadorPage.onTapContinue4);
    });
  }
}
