import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  const Cabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Adicione uma vaga a sua residência",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: _size.height * .025, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: _size.height * .002),
        Text(
          "Por favor, informe seus dados para continuar",
          style: TextStyle(fontSize: _size.height * .015, color: Colors.grey),
        ),
        SizedBox(height: _size.height * .06),
      ],
    );
  }
}
