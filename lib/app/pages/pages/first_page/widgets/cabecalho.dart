import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  const Cabecalho({super.key, required this.isError});
  final bool isError;
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return isError
        ? Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Ocorreu um erro",
                style: TextStyle(
                    fontSize: _size.height * .025, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: _size.height * .01),
              Text(
                "Por favor, tente mais tarde.",
                style: TextStyle(fontSize: _size.height * .015, color: Colors.grey),
              ),
              SizedBox(height: _size.height * .002),
            ],
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Bem-Vindo!",
                style: TextStyle(
                    fontSize: _size.height * .025, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: _size.height * .01),
              Text(
                "Estamos felizes em te vê-lo.",
                style: TextStyle(fontSize: _size.height * .015, color: Colors.grey),
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
