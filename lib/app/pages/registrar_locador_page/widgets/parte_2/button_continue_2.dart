import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:repime/app/blocs/connection_database/connection_database.dart';
import 'package:repime/app/blocs/locador/db/locador_db.dart';
import 'package:repime/app/blocs/locador/locador.dart';
import 'package:repime/app/pages/registrar_locador_page/ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

import '../../../../global_widgets/button_text_app/button_text_app.dart';

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
