import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/pages/first_page/ctr_first_page/ctr_first_page.dart';

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
        key: UniqueKey(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(size.width * .02))),
              elevation: 8,
              padding: EdgeInsets.symmetric(vertical: size.height * .02),
              backgroundColor: Colors.black,
              minimumSize: const Size(double.maxFinite, 0)),
          onPressed: ctrFirstPage.onTapContinue,
          child: Text(
            'Continue',
            style: TextStyle(color: Colors.white, fontSize: size.height * .02),
          ),
        ),
      );
    });
  }
}
