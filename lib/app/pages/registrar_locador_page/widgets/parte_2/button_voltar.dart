import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:repime/app/pages/registrar_locador_page/ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

import '../../../../global_widgets/button_text_app/button_text_app.dart';

class ButtonVoltar extends StatelessWidget {
  const ButtonVoltar({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;

  @override
  Widget build(BuildContext context) {
    return ButtonTextApp(
        isAlternative: true, text: 'Voltar', onPressed: ctrRegistrarLocadorPage.voltarFromParte2);
  }
}
