import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/locador/db/locador_db.dart';
import 'package:repime/app/blocs/util/enum_tipos_residencia/enum_tipo_residencia.dart';
import 'package:repime/app/blocs/util/enum_tipos_residencia/store_enum/store_enum_tipo_residencia.dart';
import '../../../global_widgets/snack_bar_app/snack_bar_app.dart';

part 'ctr_registrar_locador_page.g.dart';

// ignore: library_private_types_in_public_api
class CtrRegistrarLocadorPage = _CtrRegistrarLocadorPageBase with _$CtrRegistrarLocadorPage;

abstract class _CtrRegistrarLocadorPageBase with Store {
  @observable
  int atualIndex = 0;

  @action
  void _setIndex(int value) => atualIndex = value;

  // PARTE 1

  @observable
  var formFieldParte1 = GlobalKey<FormState>();

  @observable
  var keyScaffold = GlobalKey<ScaffoldState>();

  @observable
  var ctrTextNome = TextEditingController();

  @observable
  bool loading = false;

  @action
  _setLoading(bool value) => loading = value;

  String? validatorNome(String? value) {
    if (value!.isEmpty) return 'Insira um nome de usuário';
    return null;
  }

  @observable
  var ctrTextSenha = TextEditingController();

  String? validatorSenha(String? value) {
    if (value!.isEmpty) return 'Insira uma senha';
    if (value.length < 8) return 'Insira uma senha com, no mínimo, 8 caracteres';
    return null;
  }

  @observable
  bool obscureSenha = true;

  @action
  void _setObscureSenha() => obscureSenha = !obscureSenha;

  @action
  void onTapIconSenha() => _setObscureSenha();

  @observable
  var ctrTextContato = TextEditingController();

  @computed
  bool get isShowContinueParte1 => ctrTextNome.text.length > 0 && ctrTextSenha.text.length > 0;

  @action
  onTapContinue() async {
    if (!(formFieldParte1.currentState!.validate())) return;
    _setLoading(true);
    var existsUser = await LocadorDB.existsUsername(ctrTextNome.text);
    _setLoading(false);
    if (existsUser) {
      return ScaffoldMessenger.of(keyScaffold.currentContext!).showSnackBar(
          SnackBarApp.show(text: 'Nome de usuário já está em uso', context: keyScaffold.currentContext!));
    }
    _setIndex(1);
  }

  // PARTE 2
  @action
  void voltarFromParte2() => _setIndex(0);

  @action
  void continueFromParte2() => _setIndex(3);

  @observable
  XFile? image;

  @action
  Future<void> getImage() async {
    var result = await ImagePicker().pickImage(source: ImageSource.gallery, maxHeight: 300, maxWidth: 300);
    if (result == null) return;
    image = result;
  }

  @action
  void removeImage() => image = null;

  // PARTE 3
  @observable
  var tiposResidencia = [for (var e in EnumTiposResidencia.values) EnumTipoResidenciaStore(e)].asObservable();

  @action
  void onTapTipoResidencia(EnumTipoResidenciaStore t) {
    for (var e in tiposResidencia) {
      if (e.isSelected) {
        e.setSelect(false);
        break;
      }
    }
    t.setSelect();
  }

  @action
  void voltarFromParte3() => _setIndex(1);

  @computed
  bool get isShowContinueParte3 => tiposResidencia.any((t) => t.isSelected);
}
