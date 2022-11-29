import 'package:flutter/material.dart';

import '../../../../../global_widgets/button_text_app/button_text_app.dart';
import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

class ButtonVoltar extends StatelessWidget {
  const ButtonVoltar({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;

  @override
  Widget build(BuildContext context) {
    return ButtonTextApp(
        isAlternative: true, text: 'Voltar', onPressed: ctrRegistrarLocadorPage.voltarFromParte2);
  }
}
