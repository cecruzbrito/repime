import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:skeletons/skeletons.dart';

import '../../../../../blocs/vaga/vaga.dart';
import 'ctr/ctr_vaga_card.dart';

class VagaCard extends StatefulWidget {
  const VagaCard({super.key, required this.vaga});
  final Vaga vaga;
  @override
  State<VagaCard> createState() => _VagaCardState();
}

class _VagaCardState extends State<VagaCard> {
  Vaga get vaga => widget.vaga;

  late final ctrVaga = CtrVagaCard(vaga);

  @override
  void initState() {
    super.initState();
    ctrVaga.getDetalhesVaga();
  }

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Observer(builder: (_) {
          if (ctrVaga.loadingThumb) {
            return SkeletonLine(
              style: SkeletonLineStyle(height: _size.height * .15),
            );
          } else {
            if (ctrVaga.vaga.fotos.isEmpty) {
              return Container();
            }
            return Image.file(
              File(ctrVaga.vaga.fotos.first),
              height: 100,
              width: 100,
              errorBuilder: ((context, error, stackTrace) => Container()),
            );
          }
        }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                vaga.mensalidade,
                style:
                    TextStyle(color: Colors.black, fontSize: _size.height * .03, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: _size.width * .02,
            ),
            Observer(builder: (_) {
              if (!ctrVaga.loadingResidencia) {
                return Flexible(
                  child: Text(
                    ctrVaga.dadosResidencia!.endereco.endereco,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: _size.height * .02,
                    ),
                  ),
                );
              }
              return SkeletonLine(
                style: SkeletonLineStyle(height: _size.height * .02, width: _size.width * .06),
              );
            })
          ],
        )
      ],
    );
  }
}
