import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../../global_widgets/field_app/blocs/settings_field_app.dart';
import '../../../../../global_widgets/field_app/field_app.dart';
import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';
import 'button_continue.dart';
import 'cabecalho.dart';
import 'suffix_icon_senha.dart';

class InsercaoDadosParte1 extends StatelessWidget {
  const InsercaoDadosParte1({super.key, required this.ctrRegistrarLocador});
  final CtrRegistrarLocadorPage ctrRegistrarLocador;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Form(
          key: ctrRegistrarLocador.formFieldParte1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Cabecalho(),
              FieldApp(
                  settingsFieldApp: SettingsFieldApp(
                      ctr: ctrRegistrarLocador.ctrTextNome,
                      validator: ctrRegistrarLocador.validatorNome,
                      labelText: 'Nome',
                      hintText: 'Insira um nome de usuário unico',
                      max: 50)),
              SizedBox(height: _size.height * .02),
              Observer(
                  builder: (_) => FieldApp(
                      settingsFieldApp: SettingsFieldApp(
                          suffixWidget: SuffixIconSenha(ctr: ctrRegistrarLocador),
                          validator: ctrRegistrarLocador.validatorSenha,
                          ctr: ctrRegistrarLocador.ctrTextSenha,
                          labelText: 'Senha',
                          hintText: 'Insira sua senha',
                          obscureText: ctrRegistrarLocador.obscureSenha,
                          max: 50))),
              SizedBox(height: _size.height * .02),
              FieldApp(
                  settingsFieldApp: SettingsFieldApp(
                      ctr: ctrRegistrarLocador.ctrTextContato,
                      labelText: 'Contato',
                      hintText: 'Insira formas de contato (telefone, instagram, etc...)',
                      max: 200,
                      isMultLine: true)),
            ],
          ),
        ),
        ButtonContinue(ctrRegistrarLocadorPage: ctrRegistrarLocador)
      ],
    );
  }
}
