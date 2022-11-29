import 'package:flutter/material.dart';
import '../../../../../global_widgets/button_text_app/button_text_app.dart';
import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';
import 'button_continue_4.dart';
import 'cabecalho.dart';
import 'inserir_dados.dart';

class InsercaoDadosParte4 extends StatelessWidget {
  const InsercaoDadosParte4({super.key, required this.ctrRegistrarLocadorPage});
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
              const Cabecalho(),
              InserirDados(ctrRegistrarLocadorPage: ctrRegistrarLocadorPage),
            ],
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    ButtonContinue4(ctrRegistrarLocadorPage: ctrRegistrarLocadorPage),
                    SizedBox(height: _size.height * .01),
                  ],
                ),
                ButtonTextApp(
                    text: 'Voltar', isAlternative: true, onPressed: ctrRegistrarLocadorPage.onTapVoltar4)
              ],
            ))
      ],
    );
  }
}
