import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/util/enum_tipos_residencia/enum_tipo_residencia.dart';
part 'store_enum_tipo_residencia.g.dart';

class EnumTipoResidenciaStore = _EnumTipoResidenciaStoreBase with _$EnumTipoResidenciaStore;

abstract class _EnumTipoResidenciaStoreBase with Store {
  EnumTiposResidencia tipo;
  _EnumTipoResidenciaStoreBase(this.tipo);

  @observable
  bool isSelected = false;

  @action
  void setSelect([bool? value]) => value == null ? isSelected = !isSelected : isSelected = value;
}
