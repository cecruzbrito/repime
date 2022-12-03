import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/button_back_app/button_back_app.dart';
import 'package:repime/app/global_widgets/button_text_app/button_text_app.dart';
import 'package:repime/app/global_widgets/loading_app/loading_app.dart';
import 'package:repime/app/pages/pages/login_page/ctr/ctr_login_page.dart';
import 'package:repime/app/pages/pages/login_page/widgets/dados_login.dart';

import 'widgets/cabecalho.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ctr = CtrLoginPage();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: ctr.keyScaffold,
      body: Observer(builder: (_) {
        if (ctr.loading) {
          return const LoadingApp();
        }
        return Stack(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: ButtonBackApp(isAlternative: false, padding: true),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: size.height * .03),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [const Cabecalho(), DadosLogin(ctr: ctr)],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ButtonTextApp(text: 'Login', onPressed: ctr.onTapLogin),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
