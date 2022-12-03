// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ctr_first_page.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CtrFirstPage on _CtrFirstPageBase, Store {
  Computed<bool>? _$isShowUniversidadeFieldComputed;

  @override
  bool get isShowUniversidadeField => (_$isShowUniversidadeFieldComputed ??=
          Computed<bool>(() => super.isShowUniversidadeField,
              name: '_CtrFirstPageBase.isShowUniversidadeField'))
      .value;
  Computed<bool>? _$isShowButtonContinueComputed;

  @override
  bool get isShowButtonContinue => (_$isShowButtonContinueComputed ??=
          Computed<bool>(() => super.isShowButtonContinue,
              name: '_CtrFirstPageBase.isShowButtonContinue'))
      .value;

  late final _$keyScaffoldAtom =
      Atom(name: '_CtrFirstPageBase.keyScaffold', context: context);

  @override
  GlobalKey<ScaffoldState> get keyScaffold {
    _$keyScaffoldAtom.reportRead();
    return super.keyScaffold;
  }

  @override
  set keyScaffold(GlobalKey<ScaffoldState> value) {
    _$keyScaffoldAtom.reportWrite(value, super.keyScaffold, () {
      super.keyScaffold = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_CtrFirstPageBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$cidadesAtom =
      Atom(name: '_CtrFirstPageBase.cidades', context: context);

  @override
  List<Cidade> get cidades {
    _$cidadesAtom.reportRead();
    return super.cidades;
  }

  @override
  set cidades(List<Cidade> value) {
    _$cidadesAtom.reportWrite(value, super.cidades, () {
      super.cidades = value;
    });
  }

  late final _$_isShowUniversidadeFieldSetAtom = Atom(
      name: '_CtrFirstPageBase._isShowUniversidadeFieldSet', context: context);

  @override
  bool get _isShowUniversidadeFieldSet {
    _$_isShowUniversidadeFieldSetAtom.reportRead();
    return super._isShowUniversidadeFieldSet;
  }

  @override
  set _isShowUniversidadeFieldSet(bool value) {
    _$_isShowUniversidadeFieldSetAtom
        .reportWrite(value, super._isShowUniversidadeFieldSet, () {
      super._isShowUniversidadeFieldSet = value;
    });
  }

  late final _$universidadesAtom =
      Atom(name: '_CtrFirstPageBase.universidades', context: context);

  @override
  ObservableList<Universidade> get universidades {
    _$universidadesAtom.reportRead();
    return super.universidades;
  }

  @override
  set universidades(ObservableList<Universidade> value) {
    _$universidadesAtom.reportWrite(value, super.universidades, () {
      super.universidades = value;
    });
  }

  late final _$ctrTextCidadeAtom =
      Atom(name: '_CtrFirstPageBase.ctrTextCidade', context: context);

  @override
  TextEditingController get ctrTextCidade {
    _$ctrTextCidadeAtom.reportRead();
    return super.ctrTextCidade;
  }

  @override
  set ctrTextCidade(TextEditingController value) {
    _$ctrTextCidadeAtom.reportWrite(value, super.ctrTextCidade, () {
      super.ctrTextCidade = value;
    });
  }

  late final _$_cidadeSelecionadaAtom =
      Atom(name: '_CtrFirstPageBase._cidadeSelecionada', context: context);

  @override
  Cidade? get _cidadeSelecionada {
    _$_cidadeSelecionadaAtom.reportRead();
    return super._cidadeSelecionada;
  }

  @override
  set _cidadeSelecionada(Cidade? value) {
    _$_cidadeSelecionadaAtom.reportWrite(value, super._cidadeSelecionada, () {
      super._cidadeSelecionada = value;
    });
  }

  late final _$ctrTextUniversidadeAtom =
      Atom(name: '_CtrFirstPageBase.ctrTextUniversidade', context: context);

  @override
  TextEditingController get ctrTextUniversidade {
    _$ctrTextUniversidadeAtom.reportRead();
    return super.ctrTextUniversidade;
  }

  @override
  set ctrTextUniversidade(TextEditingController value) {
    _$ctrTextUniversidadeAtom.reportWrite(value, super.ctrTextUniversidade, () {
      super.ctrTextUniversidade = value;
    });
  }

  late final _$_universidadeSelecionadaAtom = Atom(
      name: '_CtrFirstPageBase._universidadeSelecionada', context: context);

  @override
  Universidade? get _universidadeSelecionada {
    _$_universidadeSelecionadaAtom.reportRead();
    return super._universidadeSelecionada;
  }

  @override
  set _universidadeSelecionada(Universidade? value) {
    _$_universidadeSelecionadaAtom
        .reportWrite(value, super._universidadeSelecionada, () {
      super._universidadeSelecionada = value;
    });
  }

  late final _$formFieldAtom =
      Atom(name: '_CtrFirstPageBase.formField', context: context);

  @override
  GlobalKey<FormState> get formField {
    _$formFieldAtom.reportRead();
    return super.formField;
  }

  @override
  set formField(GlobalKey<FormState> value) {
    _$formFieldAtom.reportWrite(value, super.formField, () {
      super.formField = value;
    });
  }

  late final _$makeGetCidadesAsyncAction =
      AsyncAction('_CtrFirstPageBase.makeGetCidades', context: context);

  @override
  Future<void> makeGetCidades() {
    return _$makeGetCidadesAsyncAction.run(() => super.makeGetCidades());
  }

  late final _$_makeGetUniversidadeAsyncAction =
      AsyncAction('_CtrFirstPageBase._makeGetUniversidade', context: context);

  @override
  Future<void> _makeGetUniversidade(Cidade cidade) {
    return _$_makeGetUniversidadeAsyncAction
        .run(() => super._makeGetUniversidade(cidade));
  }

  late final _$onTapContinueAsyncAction =
      AsyncAction('_CtrFirstPageBase.onTapContinue', context: context);

  @override
  Future<void> onTapContinue() {
    return _$onTapContinueAsyncAction.run(() => super.onTapContinue());
  }

  late final _$_CtrFirstPageBaseActionController =
      ActionController(name: '_CtrFirstPageBase', context: context);

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_CtrFirstPageBaseActionController.startAction(
        name: '_CtrFirstPageBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_CtrFirstPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setShowUniversidadeFieldSet(bool value) {
    final _$actionInfo = _$_CtrFirstPageBaseActionController.startAction(
        name: '_CtrFirstPageBase._setShowUniversidadeFieldSet');
    try {
      return super._setShowUniversidadeFieldSet(value);
    } finally {
      _$_CtrFirstPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setCidadeSelecionada(Cidade? value) {
    final _$actionInfo = _$_CtrFirstPageBaseActionController.startAction(
        name: '_CtrFirstPageBase._setCidadeSelecionada');
    try {
      return super._setCidadeSelecionada(value);
    } finally {
      _$_CtrFirstPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTapFieldCidade() {
    final _$actionInfo = _$_CtrFirstPageBaseActionController.startAction(
        name: '_CtrFirstPageBase.onTapFieldCidade');
    try {
      return super.onTapFieldCidade();
    } finally {
      _$_CtrFirstPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTapCardDropDownCidade(Cidade item) {
    final _$actionInfo = _$_CtrFirstPageBaseActionController.startAction(
        name: '_CtrFirstPageBase.onTapCardDropDownCidade');
    try {
      return super.onTapCardDropDownCidade(item);
    } finally {
      _$_CtrFirstPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setUniversidadeSelecionada(Universidade? value) {
    final _$actionInfo = _$_CtrFirstPageBaseActionController.startAction(
        name: '_CtrFirstPageBase._setUniversidadeSelecionada');
    try {
      return super._setUniversidadeSelecionada(value);
    } finally {
      _$_CtrFirstPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTapCardUniversidade(Universidade item) {
    final _$actionInfo = _$_CtrFirstPageBaseActionController.startAction(
        name: '_CtrFirstPageBase.onTapCardUniversidade');
    try {
      return super.onTapCardUniversidade(item);
    } finally {
      _$_CtrFirstPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatorCidade(String? value) {
    final _$actionInfo = _$_CtrFirstPageBaseActionController.startAction(
        name: '_CtrFirstPageBase.validatorCidade');
    try {
      return super.validatorCidade(value);
    } finally {
      _$_CtrFirstPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatorUniversidade(String? value) {
    final _$actionInfo = _$_CtrFirstPageBaseActionController.startAction(
        name: '_CtrFirstPageBase.validatorUniversidade');
    try {
      return super.validatorUniversidade(value);
    } finally {
      _$_CtrFirstPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
keyScaffold: ${keyScaffold},
loading: ${loading},
cidades: ${cidades},
universidades: ${universidades},
ctrTextCidade: ${ctrTextCidade},
ctrTextUniversidade: ${ctrTextUniversidade},
formField: ${formField},
isShowUniversidadeField: ${isShowUniversidadeField},
isShowButtonContinue: ${isShowButtonContinue}
    ''';
  }
}
