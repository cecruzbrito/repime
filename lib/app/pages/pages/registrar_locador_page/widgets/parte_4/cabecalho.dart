import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cabecalho extends StatelessWidget {
  const Cabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'Passo final!',
          style: TextStyle(fontSize: _size.height * .025, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: _size.height * .01),
        Text(
          "Estamos quase terminando seu cadastro.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: _size.height * .015, color: Colors.grey),
        ),
        SizedBox(height: _size.height * .03),
      ],
    );
  }
}
