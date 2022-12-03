import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  const Cabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'Insira seus dados para continuar',
          style: TextStyle(fontSize: size.height * .025, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: size.height * .01),
        Text(
          "Com uma conta, você poderá cadastrar uma vaga.",
          style: TextStyle(fontSize: size.height * .015, color: Colors.grey),
        ),
        SizedBox(height: size.height * .03),
      ],
    );
  }
}
