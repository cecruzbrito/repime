import 'package:flutter/material.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';

import '../../../../global_widgets/button_icon/button_icon_app.dart';

class BotaoMapa extends StatelessWidget {
  const BotaoMapa({super.key, required this.ctr});
  final CtrDetalhesVaga ctr;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return ButtonIconApp(
      colorButton: Colors.red,
      colorIcon: Colors.red,
      sizeIcon: _size.height * .03,
      isAlternative: true,
      icon: Icons.location_on,
      onPressed: ctr.tapInMap,
    );
  }
}
