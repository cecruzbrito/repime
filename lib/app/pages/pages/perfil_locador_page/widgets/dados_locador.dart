import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/global_widgets/field_app/blocs/settings_field_app.dart';
import 'package:repime/app/global_widgets/field_app/field_app.dart';

import '../../../controller/main_controller.dart';
import '../ctr/perfil_locador_ctr.dart';

class DadosLocador extends StatelessWidget {
  const DadosLocador({super.key, required this.ctr});
  final PerfilLocadorCtr ctr;
  @override
  Widget build(BuildContext context) {
    var loc = Modular.get<MainController>().locadorAtual;

    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * .02),
        Text(loc.nome,
            style: TextStyle(color: Colors.black, fontSize: size.height * .03, fontWeight: FontWeight.bold)),
        SizedBox(height: size.height * .03),
        FieldApp(
            settingsFieldApp: SettingsFieldApp(
          ctr: ctr.ctrContato,
          isEnable: false,
          labelText: "Contato",
          isMultLine: true,
        ))
      ],
    );
  }
}
