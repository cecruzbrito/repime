import 'package:repime/app/blocs/residencia/residencia.dart';

class Locador {
  int id;
  String nome, senha, contato;
  String? foto;

  Locador({required this.id, required this.contato, required this.nome, required this.senha, this.foto});
}
