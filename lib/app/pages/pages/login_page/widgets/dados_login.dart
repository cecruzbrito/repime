import 'package:flutter/material.dart';
import 'package:repime/app/global_widgets/field_app/blocs/settings_field_app.dart';
import 'package:repime/app/global_widgets/field_app/field_app.dart';
import 'package:repime/app/pages/pages/login_page/ctr/ctr_login_page.dart';

import 'animations/animation_opacity_login.dart';

class DadosLogin extends StatelessWidget {
  const DadosLogin({super.key, required this.ctrAnimation, required this.ctr});
  final CtrLoginPage ctr;
  final AnimationController ctrAnimation;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        AnimationOpacityLogin(
          ctrAnimation: ctrAnimation,
          interval: const Interval(.3, .6),
          child: FieldApp(
              settingsFieldApp: SettingsFieldApp(
                  ctr: ctr.ctrUsuario, hintText: 'Digite seu nome de usuário', labelText: 'Usuario')),
        ),
        SizedBox(height: size.height * .02),
        AnimationOpacityLogin(
          ctrAnimation: ctrAnimation,
          interval: const Interval(.6, .9),
          child: FieldApp(
              settingsFieldApp: SettingsFieldApp(
                  ctr: ctr.ctrSenha, hintText: 'Digite sua senha', labelText: 'Senha', obscureText: true)),
        ),
        SizedBox(
          height: size.height * .01,
        ),
        AnimationOpacityLogin(
          ctrAnimation: ctrAnimation,
          interval: const Interval(.85, 1),
          child: Row(
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
          ),
        )
      ],
    );
  }
}
