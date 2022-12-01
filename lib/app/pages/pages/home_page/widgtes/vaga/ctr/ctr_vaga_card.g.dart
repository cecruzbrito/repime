// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ctr_vaga_card.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CtrVagaCard on _CtrVagaCardBase, Store {
  late final _$vagaAtom = Atom(name: '_CtrVagaCardBase.vaga', context: context);

  @override
  Vaga get vaga {
    _$vagaAtom.reportRead();
    return super.vaga;
  }

  @override
  set vaga(Vaga value) {
    _$vagaAtom.reportWrite(value, super.vaga, () {
      super.vaga = value;
    });
  }

  late final _$loadingResidenciaAtom =
      Atom(name: '_CtrVagaCardBase.loadingResidencia', context: context);

  @override
  bool get loadingResidencia {
    _$loadingResidenciaAtom.reportRead();
    return super.loadingResidencia;
  }

  @override
  set loadingResidencia(bool value) {
    _$loadingResidenciaAtom.reportWrite(value, super.loadingResidencia, () {
      super.loadingResidencia = value;
    });
  }

  late final _$loadingThumbAtom =
      Atom(name: '_CtrVagaCardBase.loadingThumb', context: context);

  @override
  bool get loadingThumb {
    _$loadingThumbAtom.reportRead();
    return super.loadingThumb;
  }

  @override
  set loadingThumb(bool value) {
    _$loadingThumbAtom.reportWrite(value, super.loadingThumb, () {
      super.loadingThumb = value;
    });
  }

  late final _$dadosResidenciaAtom =
      Atom(name: '_CtrVagaCardBase.dadosResidencia', context: context);

  @override
  Residencia? get dadosResidencia {
    _$dadosResidenciaAtom.reportRead();
    return super.dadosResidencia;
  }

  @override
  set dadosResidencia(Residencia? value) {
    _$dadosResidenciaAtom.reportWrite(value, super.dadosResidencia, () {
      super.dadosResidencia = value;
    });
  }

  late final _$getDetalhesVagaAsyncAction =
      AsyncAction('_CtrVagaCardBase.getDetalhesVaga', context: context);

  @override
  Future getDetalhesVaga() {
    return _$getDetalhesVagaAsyncAction.run(() => super.getDetalhesVaga());
  }

  late final _$_getFotoAsyncAction =
      AsyncAction('_CtrVagaCardBase._getFoto', context: context);

  @override
  Future<void> _getFoto() {
    return _$_getFotoAsyncAction.run(() => super._getFoto());
  }

  late final _$_CtrVagaCardBaseActionController =
      ActionController(name: '_CtrVagaCardBase', context: context);

  @override
  void _setLoading(bool value) {
    final _$actionInfo = _$_CtrVagaCardBaseActionController.startAction(
        name: '_CtrVagaCardBase._setLoading');
    try {
      return super._setLoading(value);
    } finally {
      _$_CtrVagaCardBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setloadingThumb(bool value) {
    final _$actionInfo = _$_CtrVagaCardBaseActionController.startAction(
        name: '_CtrVagaCardBase._setloadingThumb');
    try {
      return super._setloadingThumb(value);
    } finally {
      _$_CtrVagaCardBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setResidencia(Residencia r) {
    final _$actionInfo = _$_CtrVagaCardBaseActionController.startAction(
        name: '_CtrVagaCardBase._setResidencia');
    try {
      return super._setResidencia(r);
    } finally {
      _$_CtrVagaCardBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void tapInVaga() {
    final _$actionInfo = _$_CtrVagaCardBaseActionController.startAction(
        name: '_CtrVagaCardBase.tapInVaga');
    try {
      return super.tapInVaga();
    } finally {
      _$_CtrVagaCardBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vaga: ${vaga},
loadingResidencia: ${loadingResidencia},
loadingThumb: ${loadingThumb},
dadosResidencia: ${dadosResidencia}
    ''';
  }
}
