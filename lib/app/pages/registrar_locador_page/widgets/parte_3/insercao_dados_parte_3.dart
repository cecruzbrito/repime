import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../global_widgets/button_text_app/button_text_app.dart';
import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';
import 'cabecalho.dart';
import 'selecione_tipo.dart';

class InsercaoDadosParte3 extends StatelessWidget {
  const InsercaoDadosParte3({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Cabecalho(),
              SelecioneTipo(ctrRegistrarLocadorPage: ctrRegistrarLocadorPage),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Observer(builder: (_) {
                if (!ctrRegistrarLocadorPage.isShowContinueParte3) {
                  return Container();
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ButtonTextApp(text: 'Continue', onPressed: ctrRegistrarLocadorPage.onTapContinueParte3),
                    SizedBox(height: _size.height * .01),
                  ],
                );
              }),
              ButtonTextApp(
                  isAlternative: true, text: 'Voltar', onPressed: ctrRegistrarLocadorPage.voltarFromParte3),
            ],
          ),
        )
      ],
    );
  }
}
