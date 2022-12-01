import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/global_widgets/button_text_app/button_text_app.dart';
import 'package:repime/app/pages/pages/adicionar_vaga_page/ctr/ctr_adicionar_vaga_page.dart';

import '../../../../../global_widgets/button_icon/button_icon_app.dart';
import 'cabecalho.dart';

class InserirDadosParte2 extends StatelessWidget {
  InserirDadosParte2({super.key, required this.ctrAdicionarVagaPage});
  final CtrAdicionarVagaPage ctrAdicionarVagaPage;

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Cabecalho(),
              Observer(builder: (_) {
                if (ctrAdicionarVagaPage.images.isEmpty) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.photo_library,
                        color: Colors.grey[200],
                        size: _size.height * .13,
                      ),
                      Text(
                        'Pode-se escolher, no maximo, 3 imagens',
                        style: TextStyle(color: Colors.grey[400], fontSize: _size.height * .01),
                      )
                    ],
                  );
                }
                return Stack(
                  children: [
                    for (var i = 0; i < ctrAdicionarVagaPage.images.length; i++)
                      Container(
                        margin: i == 0 ? null : EdgeInsets.only(left: _size.width * .2 * i),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(_size.width * .02),
                          child: Image.file(
                            File(ctrAdicionarVagaPage.images[i].path),
                            height: _size.height * .13,
                            width: _size.width * .3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                  ],
                );
              }),
              SizedBox(height: _size.height * .02),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ButtonIconApp(
                    icon: Icons.add_a_photo,
                    onPressed: ctrAdicionarVagaPage.tapInImage,
                    sizeIcon: _size.height * .025,
                  ),
                  SizedBox(width: _size.width * .02),
                  ButtonIconApp(
                    icon: Icons.close,
                    colorButton: Colors.red,
                    onPressed: ctrAdicionarVagaPage.onTapRemoveImages,
                    sizeIcon: _size.height * .025,
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ButtonTextApp(text: 'Salvar', onPressed: ctrAdicionarVagaPage.onTapSalvar),
              SizedBox(height: _size.height * .02),
              ButtonTextApp(
                  text: 'Voltar', isAlternative: true, onPressed: ctrAdicionarVagaPage.onTapVoltar2),
            ],
          ),
        ),
      ],
    );
  }
}
