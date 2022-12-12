import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/cidade/cidade.dart';
import 'package:repime/app/blocs/cidade/db/cidade_db.dart';
import 'package:repime/app/blocs/locatario/db/locatario_db.dart';
import 'package:repime/app/blocs/universidade/universidade.dart';
import 'package:repime/app/pages/controller/main_controller.dart';

import '../../../../../config/routes_app/routes_app.dart';
import '../../../../blocs/universidade/db/universidade_db.dart';
import '../../../../global_widgets/snack_bar_app/snack_bar_app.dart';
part 'ctr_first_page.g.dart';

class CtrFirstPage = _CtrFirstPageBase with _$CtrFirstPage;

abstract class _CtrFirstPageBase with Store {
  @observable
  var keyScaffold = GlobalKey<ScaffoldState>();

  @observable
  bool loading = true;

  @action
  void setLoading(bool value) => loading = value;

  @observable
  var cidades = <Cidade>[];

  @action
  Future<void> makeGetCidades() async {
    setLoading(true);

    try {
      cidades = await CidadeDB.getCidadesFromDataBase();
    } on Exception catch (_) {
      ScaffoldMessenger.of(keyScaffold.currentContext!).showSnackBar(
          SnackBarApp.show(text: 'Ocorreu um erro. Tente novamente.', context: keyScaffold.currentContext!));
    }

    setLoading(false);
  }

  @observable
  bool _isShowUniversidadeFieldSet = false;

  @action
  void _setShowUniversidadeFieldSet(bool value) => _isShowUniversidadeFieldSet = value;

  @observable
  var universidades = <Universidade>[].asObservable();

  @computed
  bool get isShowUniversidadeField => _isShowUniversidadeFieldSet;

  @action
  Future<void> _makeGetUniversidade(Cidade cidade) async {
    setLoading(true);

    try {
      universidades = (await UniversidadeDB.getUniversidades(cidade)).asObservable();
      _setShowUniversidadeFieldSet(true);
    } on Exception catch (e) {
      ScaffoldMessenger.of(keyScaffold.currentContext!).showSnackBar(
          SnackBarApp.show(text: 'Ocorreu um erro. Tente novamente.', context: keyScaffold.currentContext!));
    }

    setLoading(false);
  }

  @observable
  var ctrTextCidade = TextEditingController();

  @observable
  Cidade? _cidadeSelecionada;

  @action
  void _setCidadeSelecionada(Cidade? value) => _cidadeSelecionada = value;

  @action
  void onTapFieldCidade() {
    _setShowUniversidadeFieldSet(false);
    _setCidadeSelecionada(null);
  }

  @action
  void onTapCardDropDownCidade(Cidade item) {
    ctrTextCidade.text = '$item';
    _makeGetUniversidade(item);
    _setCidadeSelecionada(item);
  }

  @observable
  var ctrTextUniversidade = TextEditingController();

  @observable
  Universidade? _universidadeSelecionada;

  @action
  void _setUniversidadeSelecionada(Universidade? value) => _universidadeSelecionada = value;

  @action
  void onTapCardUniversidade(Universidade item) {
    ctrTextUniversidade.text = '$item';
    _setUniversidadeSelecionada(item);
  }

  @computed
  bool get isShowButtonContinue => (_cidadeSelecionada != null) && (_universidadeSelecionada != null);

  @observable
  var formField = GlobalKey<FormState>();

  @action
  String? validatorCidade(String? value) {
    if (value!.isEmpty) return "Selecione uma cidade";
    if (!cidades.any((c) => c.nome == value)) return "Selecione uma cidade valída";
    return null;
  }

  @action
  String? validatorUniversidade(String? value) {
    if (value!.isEmpty) return "Selecione uma universidade";
    if (!universidades.any((u) => u.nome == value)) return "Selecione uma universidade valída";
    return null;
  }

  @action
  Future<void> onTapContinue() async {
    if (!formField.currentState!.validate()) return;
    var locatarioDb = LocatarioDB(cidade: _cidadeSelecionada!, universidade: _universidadeSelecionada!);
    await locatarioDb.setCache();
    Modular.get<MainController>().setLocatarioAtual(locatarioDb);
    Modular.to.pushNamed(RouteApp.homePage.name);
  }

  void dispose() {
    ctrTextCidade.dispose();
    ctrTextUniversidade.dispose();
  }
}
