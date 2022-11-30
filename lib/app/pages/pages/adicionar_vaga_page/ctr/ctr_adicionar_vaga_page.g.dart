// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ctr_adicionar_vaga_page.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CtrAdicionarVagaPage on _CtrAdicionarVagaPageBase, Store {
  late final _$indexPageAtom =
      Atom(name: '_CtrAdicionarVagaPageBase.indexPage', context: context);

  @override
  int get indexPage {
    _$indexPageAtom.reportRead();
    return super.indexPage;
  }

  @override
  set indexPage(int value) {
    _$indexPageAtom.reportWrite(value, super.indexPage, () {
      super.indexPage = value;
    });
  }

  late final _$formFieldParte1Atom =
      Atom(name: '_CtrAdicionarVagaPageBase.formFieldParte1', context: context);

  @override
  GlobalKey<FormState> get formFieldParte1 {
    _$formFieldParte1Atom.reportRead();
    return super.formFieldParte1;
  }

  @override
  set formFieldParte1(GlobalKey<FormState> value) {
    _$formFieldParte1Atom.reportWrite(value, super.formFieldParte1, () {
      super.formFieldParte1 = value;
    });
  }

  late final _$ctrInformacoesAdicionaisAtom = Atom(
      name: '_CtrAdicionarVagaPageBase.ctrInformacoesAdicionais',
      context: context);

  @override
  TextEditingController get ctrInformacoesAdicionais {
    _$ctrInformacoesAdicionaisAtom.reportRead();
    return super.ctrInformacoesAdicionais;
  }

  @override
  set ctrInformacoesAdicionais(TextEditingController value) {
    _$ctrInformacoesAdicionaisAtom
        .reportWrite(value, super.ctrInformacoesAdicionais, () {
      super.ctrInformacoesAdicionais = value;
    });
  }

  late final _$ctrValorMensalidadeAtom = Atom(
      name: '_CtrAdicionarVagaPageBase.ctrValorMensalidade', context: context);

  @override
  TextEditingController get ctrValorMensalidade {
    _$ctrValorMensalidadeAtom.reportRead();
    return super.ctrValorMensalidade;
  }

  @override
  set ctrValorMensalidade(TextEditingController value) {
    _$ctrValorMensalidadeAtom.reportWrite(value, super.ctrValorMensalidade, () {
      super.ctrValorMensalidade = value;
    });
  }

  late final _$imagesAtom =
      Atom(name: '_CtrAdicionarVagaPageBase.images', context: context);

  @override
  ObservableList<XFile> get images {
    _$imagesAtom.reportRead();
    return super.images;
  }

  @override
  set images(ObservableList<XFile> value) {
    _$imagesAtom.reportWrite(value, super.images, () {
      super.images = value;
    });
  }

  late final _$tapInImageAsyncAction =
      AsyncAction('_CtrAdicionarVagaPageBase.tapInImage', context: context);

  @override
  Future tapInImage() {
    return _$tapInImageAsyncAction.run(() => super.tapInImage());
  }

  late final _$onTapRemoveImagesAsyncAction = AsyncAction(
      '_CtrAdicionarVagaPageBase.onTapRemoveImages',
      context: context);

  @override
  Future onTapRemoveImages() {
    return _$onTapRemoveImagesAsyncAction.run(() => super.onTapRemoveImages());
  }

  late final _$onTapSalvarAsyncAction =
      AsyncAction('_CtrAdicionarVagaPageBase.onTapSalvar', context: context);

  @override
  Future onTapSalvar() {
    return _$onTapSalvarAsyncAction.run(() => super.onTapSalvar());
  }

  late final _$_CtrAdicionarVagaPageBaseActionController =
      ActionController(name: '_CtrAdicionarVagaPageBase', context: context);

  @override
  void _setIndexPage(int value) {
    final _$actionInfo = _$_CtrAdicionarVagaPageBaseActionController
        .startAction(name: '_CtrAdicionarVagaPageBase._setIndexPage');
    try {
      return super._setIndexPage(value);
    } finally {
      _$_CtrAdicionarVagaPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? onValidatorInformacoes(String? value) {
    final _$actionInfo = _$_CtrAdicionarVagaPageBaseActionController
        .startAction(name: '_CtrAdicionarVagaPageBase.onValidatorInformacoes');
    try {
      return super.onValidatorInformacoes(value);
    } finally {
      _$_CtrAdicionarVagaPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? onValidatorMensalidade(String? value) {
    final _$actionInfo = _$_CtrAdicionarVagaPageBaseActionController
        .startAction(name: '_CtrAdicionarVagaPageBase.onValidatorMensalidade');
    try {
      return super.onValidatorMensalidade(value);
    } finally {
      _$_CtrAdicionarVagaPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onTapContinue() {
    final _$actionInfo = _$_CtrAdicionarVagaPageBaseActionController
        .startAction(name: '_CtrAdicionarVagaPageBase.onTapContinue');
    try {
      return super.onTapContinue();
    } finally {
      _$_CtrAdicionarVagaPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onTapVoltar2() {
    final _$actionInfo = _$_CtrAdicionarVagaPageBaseActionController
        .startAction(name: '_CtrAdicionarVagaPageBase.onTapVoltar2');
    try {
      return super.onTapVoltar2();
    } finally {
      _$_CtrAdicionarVagaPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
indexPage: ${indexPage},
formFieldParte1: ${formFieldParte1},
ctrInformacoesAdicionais: ${ctrInformacoesAdicionais},
ctrValorMensalidade: ${ctrValorMensalidade},
images: ${images}
    ''';
  }
}
