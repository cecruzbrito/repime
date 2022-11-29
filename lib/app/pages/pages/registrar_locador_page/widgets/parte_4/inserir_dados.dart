import 'package:flutter/material.dart';

import '../../../../../global_widgets/field_app/blocs/settings_field_app.dart';
import '../../../../../global_widgets/field_app/field_app.dart';
import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

class InserirDados extends StatelessWidget {
  const InserirDados({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Form(
      key: ctrRegistrarLocadorPage.formFieldParte4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (ctrRegistrarLocadorPage.isRepublica)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FieldApp(
                    settingsFieldApp: SettingsFieldApp(
                        ctr: ctrRegistrarLocadorPage.ctrNomeRepublica,
                        labelText: 'Nome da República',
                        hintText: 'Insira o nome de sua república',
                        max: 50)),
                SizedBox(height: _size.height * .02),
              ],
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FieldApp(
                  settingsFieldApp: SettingsFieldApp(
                      ctr: ctrRegistrarLocadorPage.ctrEnderecoResidencia,
                      labelText: 'Endereço',
                      hintText: 'Insira o endereço',
                      max: 200)),
              SizedBox(height: _size.height * .02),
            ],
          ),
          if (ctrRegistrarLocadorPage.isRepublica)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: FieldApp(
                      settingsFieldApp: SettingsFieldApp(
                          ctr: ctrRegistrarLocadorPage.ctrFundacaoDia,
                          validator: ctrRegistrarLocadorPage.validatorFundacaoDia,
                          labelText: 'Dia',
                          hintText: 'Dia',
                          isDate: true,
                          max: 2)),
                ),
                SizedBox(width: _size.width * .02),
                Expanded(
                  child: FieldApp(
                      settingsFieldApp: SettingsFieldApp(
                          ctr: ctrRegistrarLocadorPage.ctrFundacaoMes,
                          validator: ctrRegistrarLocadorPage.validatorFundacaoMes,
                          labelText: 'Mês',
                          hintText: 'Mês',
                          isDate: true,
                          max: 2)),
                ),
                SizedBox(width: _size.width * .02),
                Expanded(
                  child: FieldApp(
                      settingsFieldApp: SettingsFieldApp(
                          ctr: ctrRegistrarLocadorPage.ctrFundacaoAno,
                          validator: ctrRegistrarLocadorPage.validatorFundacaoAno,
                          labelText: 'Ano',
                          hintText: 'Ano',
                          isDate: true,
                          max: 4)),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
