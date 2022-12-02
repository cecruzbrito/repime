import 'package:flutter/material.dart';
import 'package:repime/app/global_widgets/button_icon/button_icon_app.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';

class BotaoVoltar extends StatelessWidget {
  const BotaoVoltar({super.key, required this.ctr});
  final CtrDetalhesVaga ctr;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return ButtonIconApp(
      colorButton: Colors.white,
      colorIcon: Colors.white,
      sizeIcon: _size.height * .03,
      isAlternative: true,
      icon: Icons.arrow_back,
      onPressed: ctr.tapInVoltar,
    );
  }
}
