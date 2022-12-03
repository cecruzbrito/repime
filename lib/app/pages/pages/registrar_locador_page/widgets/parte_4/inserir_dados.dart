import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/blocs/util/enum_images_app/enum_images_app.dart';

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
            Column(
              children: [
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
                SizedBox(height: _size.height * .03),
                Observer(
                    builder: (_) => GestureDetector(
                          onTap: ctrRegistrarLocadorPage.setTrotes,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                EnumImagesApp.clown.image,
                                height: _size.height * .07,
                              ),
                              Text(
                                'Trotes são feitos?',
                                style: TextStyle(color: Colors.black, fontSize: _size.height * .02),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: _size.width * .01, vertical: _size.height * .001),
                                decoration: BoxDecoration(
                                    border: ctrRegistrarLocadorPage.isTrotes
                                        ? null
                                        : Border.all(color: Colors.black, width: _size.width * .001),
                                    color: ctrRegistrarLocadorPage.isTrotes ? Colors.black : Colors.white,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  ctrRegistrarLocadorPage.isTrotes ? Icons.check : Icons.close,
                                  color: ctrRegistrarLocadorPage.isTrotes ? Colors.white : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ))
              ],
            ),
        ],
      ),
    );
  }
}
