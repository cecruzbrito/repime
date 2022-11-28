class Universidade {
  int id, idCidade;
  String nome;

  static Universidade zero = Universidade(id: 0, idCidade: 0, nome: '');

  Universidade({required this.id, required this.idCidade, required this.nome});

  @override
  String toString() => nome;
}
