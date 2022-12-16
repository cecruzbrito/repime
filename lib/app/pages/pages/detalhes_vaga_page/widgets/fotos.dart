import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:skeletons/skeletons.dart';

import '../ctr/ctr_detalhes_vaga.dart';
import 'botao_map.dart';
import 'botao_voltar.dart';
import 'controller_foto.dart';

class Fotos extends StatelessWidget {
  const Fotos({super.key, required this.ctr});

  final CtrDetalhesVaga ctr;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .4,
      width: size.width,
      child: Stack(
        children: [
          Observer(builder: (_) {
            if (ctr.loading) {
              return SkeletonLine(
                style: SkeletonLineStyle(
                  height: size.height * .4,
                  width: size.width,
                ),
              );
            }

            if (ctr.vaga!.fotos.isEmpty) {
              return Container(
                width: size.width,
                height: size.height * .4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(size.width * .07),
                ),
                child: Stack(
                  children: [
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.close, color: Colors.grey[500], size: size.height * .04),
                        Text(
                          'Sem imagem',
                          style: TextStyle(fontSize: size.height * .01, color: Colors.grey[500]),
                        )
                      ],
                    ))
                  ],
                ),
              );
            }
            return SizedBox(
              width: size.width,
              height: size.height * .4,
              child: Stack(
                children: [
                  PageView.builder(
                      itemCount: ctr.vaga!.fotos.length,
                      onPageChanged: ctr.onChangeFotos,
                      itemBuilder: (context, index) => Image.file(
                            File(ctr.vaga!.fotos[index]),
                            width: size.width,
                            height: size.height * .4,
                            fit: BoxFit.cover,
                          )),
                  Align(alignment: Alignment.bottomCenter, child: ControllerFoto(ctr: ctr))
                ],
              ),
            );
          }),
          Container(
              margin: EdgeInsets.only(top: size.height * .03, left: size.width * .05),
              child: BotaoVoltar(ctr: ctr)),
          Align(
            alignment: Alignment.topRight,
            child: Container(
                margin: EdgeInsets.only(top: size.height * .03, right: size.width * .05),
                child: BotaoMapa(ctr: ctr)),
          ),
        ],
      ),
    );
  }
}
