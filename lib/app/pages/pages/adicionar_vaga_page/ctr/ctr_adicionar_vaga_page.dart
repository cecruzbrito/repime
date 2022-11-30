import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:repime/app/blocs/vaga/db/vaga_db.dart';
import 'package:repime/app/pages/controller/main_controller.dart';
part 'ctr_adicionar_vaga_page.g.dart';

class CtrAdicionarVagaPage = _CtrAdicionarVagaPageBase with _$CtrAdicionarVagaPage;

abstract class _CtrAdicionarVagaPageBase with Store {
  @observable
  int indexPage = 0;

  @action
  void _setIndexPage(int value) => indexPage = value;

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
