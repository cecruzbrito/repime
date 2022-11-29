import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../../global_widgets/button_text_app/button_text_app.dart';
import '../../ctr_first_page/ctr_first_page.dart';
import 'animation_button_opacity.dart';

class BotaoContinue extends StatelessWidget {
  const BotaoContinue({super.key, required this.ctrFirstPage});
  final CtrFirstPage ctrFirstPage;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Observer(builder: (context) {
      if (!ctrFirstPage.isShowButtonContinue) return Container();
      return AnimationButtonOpacity(
          key: UniqueKey(), child: ButtonTextApp(text: 'Continue', onPressed: ctrFirstPage.onTapContinue));
    });
  }
}
