import 'package:flutter/material.dart';
import 'package:repime/app/pages/registrar_locador_page/ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

import 'avatar.dart';
import 'button_voltar.dart';
import 'button_continue_2.dart';
import 'cabecalho.dart';

class InsercaoDadosParte2 extends StatelessWidget {
  const InsercaoDadosParte2({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Cabecalho(),
              Avatar(ctrRegistrarLocadorPage: ctrRegistrarLocadorPage),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ButtonContinue2(ctrRegistrarLocadorPage: ctrRegistrarLocadorPage),
              SizedBox(height: size.height * .01),
              ButtonVoltar(ctrRegistrarLocadorPage: ctrRegistrarLocadorPage),
            ],
          ),
        )
      ],
    );
  }
}
