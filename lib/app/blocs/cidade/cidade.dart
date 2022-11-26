import '../universidade/universidade.dart';

class Cidade {
  int id;
  String nome, pais, uf;

  Cidade({required this.id, required this.nome, required this.uf, required this.pais});

  var universidades = <Universidade>[];

  set adicionarList(List<Universidade> value) => universidades = value;
}
