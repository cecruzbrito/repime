import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';

class ControllerFoto extends StatelessWidget {
  const ControllerFoto({super.key, required this.ctr});
  final CtrDetalhesVaga ctr;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Observer(builder: (_) {
      if (ctr.vaga!.fotos.length == 1) {
        return Container();
      }
      return Observer(builder: (_) {
        return Padding(
          padding: EdgeInsets.only(bottom: _size.height * .01),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (var i = 0; i < ctr.vaga!.fotos.length; i++)
                Observer(builder: (_) {
                  return Container(
                    margin: EdgeInsets.only(right: _size.width * .003),
                    height: _size.height * .013,
                    width: _size.height * .013,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: ctr.indexFoto == i ? Colors.black : Colors.black26),
                  );
                })
            ],
          ),
        );
      });
    });
  }
}
