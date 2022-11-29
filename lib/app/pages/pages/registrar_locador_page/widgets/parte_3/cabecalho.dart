import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  const Cabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'Como é defindo seu imóvel?',
          style: TextStyle(fontSize: _size.height * .025, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: _size.height * .01),
        Text(
          "Escolha corretamente, pois esse dado não poderá ser alterado.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: _size.height * .015, color: Colors.grey),
        ),
        SizedBox(height: _size.height * .03),
      ],
    );
  }
}
