import '../universidade/universidade.dart';

class Cidade {
  int id;
  String nome, pais, uf;

  static Cidade zero = Cidade(id: 0, nome: '', uf: '', pais: '');
  Cidade({required this.id, required this.nome, required this.uf, required this.pais});

  var universidades = <Universidade>[];

  set adicionarList(List<Universidade> value) => universidades = value;

  @override
  String toString() => nome;
}
