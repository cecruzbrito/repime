class Universidade {
  int id, idCidade;
  String nome;

  Universidade({required this.id, required this.idCidade, required this.nome});

  @override
  String toString() => nome;
}
