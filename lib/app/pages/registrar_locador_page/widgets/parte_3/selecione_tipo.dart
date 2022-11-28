import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/pages/registrar_locador_page/ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

import 'item_residencia.dart';

class SelecioneTipo extends StatelessWidget {
  const SelecioneTipo({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Observer(builder: (_) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var t in ctrRegistrarLocadorPage.tiposResidencia)
              ItemResidencia(
                tipoResidenciaStore: t,
                onPressed: () => ctrRegistrarLocadorPage.onTapTipoResidencia(t),
              )
          ],
        );
      }),
    );
  }
}
