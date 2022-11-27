import 'package:repime/app/blocs/cidade/cidade.dart';
import 'package:repime/app/blocs/universidade/universidade.dart';

class Locatario {
  Universidade universidade;
  Cidade cidade;
  Locatario({required this.cidade, required this.universidade});
}
