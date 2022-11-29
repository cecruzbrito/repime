import 'package:flutter/material.dart';

import '../../../../../global_widgets/button_text_app/button_text_app.dart';
import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

class ButtonContinue2 extends StatelessWidget {
  const ButtonContinue2({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;
  @override
  Widget build(BuildContext context) {
    return ButtonTextApp(
      text: 'Continue',
      onPressed: ctrRegistrarLocadorPage.continueFromParte2,
    );
  }
}
