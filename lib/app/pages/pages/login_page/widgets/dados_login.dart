import 'package:flutter/material.dart';
import 'package:repime/app/global_widgets/field_app/blocs/settings_field_app.dart';
import 'package:repime/app/global_widgets/field_app/field_app.dart';
import 'package:repime/app/pages/pages/login_page/ctr/ctr_login_page.dart';

class DadosLogin extends StatelessWidget {
  const DadosLogin({super.key, required this.ctr});
  final CtrLoginPage ctr;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        FieldApp(
            settingsFieldApp: SettingsFieldApp(
                ctr: ctr.ctrUsuario, hintText: 'Digite seu nome de usuário', labelText: 'Usuario')),
        SizedBox(height: size.height * .02),
        FieldApp(
            settingsFieldApp: SettingsFieldApp(
                ctr: ctr.ctrSenha, hintText: 'Digite sua senha', labelText: 'Senha', obscureText: true)),
        SizedBox(
          height: size.height * .01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Não possui conta?',
              style: TextStyle(fontSize: size.height * .013, color: Colors.black26),
            ),
            TextButton(
                onPressed: ctr.onTapRegistrar,
                child: Text(
                  'Registre-se',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: size.height * .013),
                ))
          ],
        )
      ],
    );
  }
}
