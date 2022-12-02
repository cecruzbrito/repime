import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';

import '../../../../blocs/util/enum_images_app/enum_images_app.dart';

class DadosRepublica extends StatelessWidget {
  const DadosRepublica({super.key, required this.ctr});
  final CtrDetalhesVaga ctr;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    if (!ctr.vaga!.residencia.tipo.isRepublica) {
      return Container();
    }
    return Column(
      children: [
        SizedBox(height: _size.height * .02),
        Observer(builder: (_) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: _size.width * .4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ctr.vaga!.rep!.nome,
                        style: TextStyle(color: Colors.black, fontSize: _size.height * .015)),
                    Text("Fundada em ${ctr.vaga!.rep!.dateFormated}",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black26,
                            fontSize: _size.height * .015)),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    EnumImagesApp.clown.image,
                    height: _size.height * .04,
                  ),
                  Text(ctr.vaga!.rep!.nameTrote,
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black26, fontSize: _size.height * .013)),
                ],
              )
            ],
          );
        }),
      ],
    );
  }
}
