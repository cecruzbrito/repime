import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:skeletons/skeletons.dart';

import '../ctr/ctr_detalhes_vaga.dart';

class Fotos extends StatelessWidget {
  const Fotos({super.key, required this.ctr});

  final CtrDetalhesVaga ctr;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Observer(builder: (_) {
      if (ctr.loading) {
        return SkeletonLine(
          style: SkeletonLineStyle(
            height: size.height * .4,
            width: size.width,
          ),
        );
      }

      if (ctr.vaga.fotos.isEmpty) {
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
        child: PageView.builder(
            itemCount: ctr.vaga.fotos.length,
            itemBuilder: (context, index) => Image.file(
                  File(ctr.vaga.fotos[index]),
                  width: size.width,
                  height: size.height * .4,
                  fit: BoxFit.cover,
                )),
      );
    });
  }
}
