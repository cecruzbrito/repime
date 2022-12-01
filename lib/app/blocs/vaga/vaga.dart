class Vaga {
  int id, idResidencia;
  String mensalidade;
  String informacoes;
  List<String> fotos;
  Vaga(
      {required this.id,
      required this.idResidencia,
      required this.informacoes,
      required this.mensalidade,
      required this.fotos});

  String get mensalidadeFormatada => 'R\$$mensalidade';
}
