import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/pages/controller/main_controller.dart';
import 'package:repime/app/pages/pages/home_page/ctr/ctr_home_page.dart';
import 'package:repime/app/pages/pages/home_page/widgtes/animations/animation_cabecalho.dart';

import '../../../../global_widgets/button_icon/button_icon_app.dart';

class Cabecalho extends StatelessWidget {
  Cabecalho({super.key, required this.ctrAnim, required this.ctr});
  CtrHomePage ctr;
  AnimationController ctrAnim;

  final _locatario = Modular.get<MainController>().locatarioAtual;
  var mainController = Modular.get<MainController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * .03),
      child: Observer(builder: (context) {
        return Column(
          children: [
            Observer(builder: (context) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonIconApp(
                    icon: mainController.isValid ? Icons.person : Icons.login,
                    onPressed: ctr.tapInPerfil,
                    sizeIcon: size.height * .03,
                    isAlternative: true,
                  ),
                  Observer(builder: (_) {
                    if (!mainController.isValid) {
                      return Container();
                    }
                    return ButtonIconApp(
                      icon: Icons.add,
                      colorIcon: Colors.white,
                      onPressed: ctr.tapInAddVaga,
                      sizeIcon: size.height * .03,
                    );
                  }),
                ],
              );
            }),
            SizedBox(
              height: size.height * .04,
            ),
            AnimationCabecalho(
              ctrAnim: ctrAnim,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cidade',
                    style: TextStyle(fontSize: size.height * .015, color: Colors.grey),
                  ),
                  SizedBox(height: size.height * .01),
                  Text(
                    _locatario.cidade.nome,
                    style: TextStyle(
                        fontSize: size.height * .035, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: size.height * .01),
                  const Divider(),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
