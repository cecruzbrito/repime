import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../../global_widgets/button_icon/button_icon_app.dart';
import '../../ctr_registrar_locador_page/ctr_registrar_locador_page.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.ctrRegistrarLocadorPage});
  final CtrRegistrarLocadorPage ctrRegistrarLocadorPage;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var maxH = size.height * .13;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Observer(builder: (context) {
          if (ctrRegistrarLocadorPage.image != null) {
            return SizedBox(
              height: maxH,
              width: maxH,
              child: ClipOval(
                  child: Image.file(
                File(ctrRegistrarLocadorPage.image!.path),
                height: maxH,
                width: maxH,
                fit: BoxFit.cover,
              )),
            );
          }
          return Container(
              height: maxH,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
              alignment: Alignment.center,
              child: Icon(
                Icons.person,
                size: maxH * .75,
                color: Colors.white,
              ));
        }),
        SizedBox(height: size.height * .01),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonIconApp(
              icon: Icons.add_a_photo,
              onPressed: ctrRegistrarLocadorPage.getImage,
              sizeIcon: maxH * .15,
              colorIcon: Colors.white,
            ),
            Observer(builder: (_) {
              if (ctrRegistrarLocadorPage.image == null) return Container();
              return Row(
                children: [
                  SizedBox(
                    width: size.width * .01,
                  ),
                  ButtonIconApp(
                    icon: Icons.close,
                    colorButton: Colors.red,
                    onPressed: ctrRegistrarLocadorPage.removeImage,
                    sizeIcon: maxH * .15,
                  ),
                ],
              );
            }),
          ],
        )
      ],
    );
  }
}
