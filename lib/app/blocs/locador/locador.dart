import 'package:repime/app/blocs/residencia/residencia.dart';

class Locador {
  int id;
  String nome, senha, contato;
  String? foto;

  Residencia? residencia;

  static Locador zero = Locador(contato: '', id: 0, nome: '', senha: '', foto: '');

  set setResidencia(Residencia value) => residencia = value;

  Locador({required this.id, required this.contato, required this.nome, required this.senha, this.foto});
}
