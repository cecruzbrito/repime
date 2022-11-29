import 'package:repime/app/blocs/cidade/cidade.dart';
import 'package:repime/app/blocs/util/enum_tipos_residencia/enum_tipo_residencia.dart';

import 'blocs/endereco/endereco.dart';

class Residencia {
  int id;
  EnumTiposResidencia tipo;
  Cidade cidade;
  Endereco endereco;
  Residencia({required this.cidade, required this.id, required this.tipo, required this.endereco});
}
