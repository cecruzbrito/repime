import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';
import 'package:repime/app/pages/controller/main_controller.dart';

import '../../../../global_widgets/snack_bar_app/snack_bar_app.dart';
part 'ctr_adicionar_vaga_page.g.dart';

class CtrAdicionarVagaPage = _CtrAdicionarVagaPageBase with _$CtrAdicionarVagaPage;

abstract class _CtrAdicionarVagaPageBase with Store {
  @observable
  var keyScaffold = GlobalKey<ScaffoldState>();

  @observable
  int indexPage = 0;

  @action
  void _setIndexPage(int value) => indexPage = value;

  @observable
  bool loading = false;

  @action
  void _setLoading(bool value) => loading = value;

  // PARTE 1
  @observable
  var formFieldParte1 = GlobalKey<FormState>();

  @observable
  var ctrInformacoesAdicionais = TextEditingController();

  @action
  String? onValidatorInformacoes(String? value) {
    if (value!.isEmpty) return 'Não mantenha este campo vazio';
    return null;
  }

  @observable
  var ctrValorMensalidade = TextEditingController();

  @action
  String? onValidatorMensalidade(String? value) {
    if (value!.isEmpty) return 'Não mantenha este campo vazio';
    return null;
  }

  @action
  onTapContinue() {
    if (!formFieldParte1.currentState!.validate()) return;
    _setIndexPage(1);
  }

  // PARTE 2

  @observable
  var images = <XFile>[].asObservable();

  @action
  tapInImage() async {
    var result = await ImagePicker().pickMultiImage(maxHeight: 300, maxWidth: 300);

    if (result.isEmpty) return;
    if (result.length > 3) {
      result = result.sublist(0, 3);
    }
    images = result.asObservable();
  }

  @action
  onTapRemoveImages() async {
    images.clear();
  }

  @action
  onTapSalvar() async {
    _setLoading(true);

    var imagesDecodes = <String>[];
    for (var i in images) {
      imagesDecodes.add(base64Encode(await i.readAsBytes()));
    }
    var locador = Modular.get<MainController>().locadorAtual;
    var v = VagaDB(
        id: 0,
        idResidencia: locador.residencia!.id,
        informacoes: ctrInformacoesAdicionais.text,
        fotos: imagesDecodes,
        mensalidade: ctrValorMensalidade.text);

    try {
      await VagaDB.setDados(v);
      _setLoading(false);
      ScaffoldMessenger.of(keyScaffold.currentContext!).showSnackBar(
          SnackBarApp.show(text: 'Vaga adicionada com sucesso!', context: keyScaffold.currentContext!));
      Modular.to.pop();
      return;
    } on Exception catch (e) {
      print(e);
    }
  }

  @action
  onTapVoltar2() => _setIndexPage(0);

  void dispose() {
    ctrInformacoesAdicionais.dispose();
    ctrValorMensalidade.dispose();
  }
}
