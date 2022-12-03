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
  late final ctrVaga = CtrVagaCard(widget.vaga);

  @override
  void initState() {
    super.initState();
    ctrVaga.getDetalhesVaga();
  }

  @override
  Widget build(BuildContext context) {
    ctrVaga.setVaga(widget.vaga);

    var _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: _size.height * .04),
      child: GestureDetector(
        onTap: ctrVaga.tapInVaga,
        child: SizedBox(
          width: _size.width * .8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(_size.width * .07),
                child: Observer(builder: (_) {
                  if (ctrVaga.loadingThumb) {
                    return SizedBox(
                      height: _size.height * .2,
                      width: _size.width * .8,
                      child: SkeletonLine(
                        style: SkeletonLineStyle(
                          height: _size.height * .2,
                          width: _size.width * .8,
                          borderRadius: BorderRadius.circular(_size.width * .07),
                        ),
                      ),
                    );
                  } else {
                    if (ctrVaga.vaga.fotos.isEmpty) {
                      return Container(
                        height: _size.height * .2,
                        width: _size.width * .8,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(_size.width * .07),
                        ),
                        child: Stack(
                          children: [
                            Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.close, color: Colors.grey[500], size: _size.height * .04),
                                Text(
                                  'Sem imagem',
                                  style: TextStyle(fontSize: _size.height * .01, color: Colors.grey[500]),
                                )
                              ],
                            ))
                          ],
                        ),
                      );
                    }
                    return Image.file(
                      File(ctrVaga.vaga.fotos.first),
                      height: _size.height * .2,
                      width: _size.width * .8,
                      fit: BoxFit.cover,
                      errorBuilder: ((context, error, stackTrace) => Container()),
                    );
                  }
                }),
              ),
              SizedBox(height: _size.height * .02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Text(
                          ctrVaga.vaga.mensalidadeFormatada,
                          style: TextStyle(
                              color: Colors.black, fontSize: _size.height * .03, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          ctrVaga.vaga.residencia.endereco.endereco,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: _size.height * .013,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: _size.height * .01,
                  ),
                  Observer(
                      builder: (_) => Text(
                            '${ctrVaga.vaga.residencia.tipo}',
                            style: TextStyle(color: Colors.black, fontSize: _size.height * .015),
                          ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
