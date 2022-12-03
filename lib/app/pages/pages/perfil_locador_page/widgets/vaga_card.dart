import 'dart:io';

import 'package:flutter/material.dart';
import 'package:repime/app/blocs/vaga/vaga.dart';
import 'package:repime/app/pages/pages/perfil_locador_page/ctr/perfil_locador_ctr.dart';

class VagaCard extends StatelessWidget {
  const VagaCard({super.key, required this.ctr, required this.v});
  final Vaga v;
  final PerfilLocadorCtr ctr;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(size.width * .03),
          child: Builder(builder: (_) {
            if (v.fotos.isEmpty || v.fotos == null) {
              return Container(
                width: size.width * .3,
                height: size.height * .13,
                color: Colors.grey[300],
              );
            }

            return Image.file(
              File(v.fotos.first),
              width: size.width * .3,
              height: size.height * .13,
              fit: BoxFit.cover,
            );
          }),
        ),
        SizedBox(
          width: size.width * .03,
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * .02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  v.informacoes,
                  maxLines: 3,
                  style: TextStyle(fontSize: size.height * .015),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                Column(
                  children: [
                    Text(
                      v.mensalidadeFormatada,
                      style: TextStyle(fontSize: size.height * .025, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Adicionado em: ${v.date.day}/${v.date.month}/${v.date.year}',
                      style: TextStyle(
                          fontSize: size.height * .01, fontStyle: FontStyle.italic, color: Colors.black38),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () => ctr.deleteVaga(v),
          child: Icon(
            Icons.close,
            size: size.height * .035,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
