// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ctr_detalhes_vaga.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CtrDetalhesVaga on _CtrDetalhesVagaBase, Store {
  late final _$vagaAtom =
      Atom(name: '_CtrDetalhesVagaBase.vaga', context: context);

  @override
  Vaga? get vaga {
    _$vagaAtom.reportRead();
    return super.vaga;
  }

  @override
  set vaga(Vaga? value) {
    _$vagaAtom.reportWrite(value, super.vaga, () {
      super.vaga = value;
    });
  }

  late final _$indexFotoAtom =
      Atom(name: '_CtrDetalhesVagaBase.indexFoto', context: context);

  @override
  int get indexFoto {
    _$indexFotoAtom.reportRead();
    return super.indexFoto;
  }

  @override
  set indexFoto(int value) {
    _$indexFotoAtom.reportWrite(value, super.indexFoto, () {
      super.indexFoto = value;
    });
  }

  late final _$ctrInfoAtom =
      Atom(name: '_CtrDetalhesVagaBase.ctrInfo', context: context);

  @override
  TextEditingController get ctrInfo {
    _$ctrInfoAtom.reportRead();
    return super.ctrInfo;
  }

  @override
  set ctrInfo(TextEditingController value) {
    _$ctrInfoAtom.reportWrite(value, super.ctrInfo, () {
      super.ctrInfo = value;
    });
  }

  late final _$ctrContatoAtom =
      Atom(name: '_CtrDetalhesVagaBase.ctrContato', context: context);

  @override
  TextEditingController get ctrContato {
    _$ctrContatoAtom.reportRead();
    return super.ctrContato;
  }

  @override
  set ctrContato(TextEditingController value) {
    _$ctrContatoAtom.reportWrite(value, super.ctrContato, () {
      super.ctrContato = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_CtrDetalhesVagaBase.loading', context: context);

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

  late final _$lAtom = Atom(name: '_CtrDetalhesVagaBase.l', context: context);

  @override
  Locador? get l {
    _$lAtom.reportRead();
    return super.l;
  }

  @override
  set l(Locador? value) {
    _$lAtom.reportWrite(value, super.l, () {
      super.l = value;
    });
  }

  late final _$loadingLocadorAtom =
      Atom(name: '_CtrDetalhesVagaBase.loadingLocador', context: context);

  @override
  bool get loadingLocador {
    _$loadingLocadorAtom.reportRead();
    return super.loadingLocador;
  }

  @override
  set loadingLocador(bool value) {
    _$loadingLocadorAtom.reportWrite(value, super.loadingLocador, () {
      super.loadingLocador = value;
    });
  }

  late final _$getDetalhesVagaAsyncAction =
      AsyncAction('_CtrDetalhesVagaBase.getDetalhesVaga', context: context);

  @override
  Future<void> getDetalhesVaga() {
    return _$getDetalhesVagaAsyncAction.run(() => super.getDetalhesVaga());
  }

  late final _$_getLocadorAsyncAction =
      AsyncAction('_CtrDetalhesVagaBase._getLocador', context: context);

  @override
  Future _getLocador() {
    return _$_getLocadorAsyncAction.run(() => super._getLocador());
  }

  late final _$_CtrDetalhesVagaBaseActionController =
      ActionController(name: '_CtrDetalhesVagaBase', context: context);

  @override
  void setVaga(Vaga value) {
    final _$actionInfo = _$_CtrDetalhesVagaBaseActionController.startAction(
        name: '_CtrDetalhesVagaBase.setVaga');
    try {
      return super.setVaga(value);
    } finally {
      _$_CtrDetalhesVagaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeFotos(int value) {
    final _$actionInfo = _$_CtrDetalhesVagaBaseActionController.startAction(
        name: '_CtrDetalhesVagaBase.onChangeFotos');
    try {
      return super.onChangeFotos(value);
    } finally {
      _$_CtrDetalhesVagaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setLoading(bool value) {
    final _$actionInfo = _$_CtrDetalhesVagaBaseActionController.startAction(
        name: '_CtrDetalhesVagaBase._setLoading');
    try {
      return super._setLoading(value);
    } finally {
      _$_CtrDetalhesVagaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setLoadingLocador(bool value) {
    final _$actionInfo = _$_CtrDetalhesVagaBaseActionController.startAction(
        name: '_CtrDetalhesVagaBase._setLoadingLocador');
    try {
      return super._setLoadingLocador(value);
    } finally {
      _$_CtrDetalhesVagaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void tapInVoltar() {
    final _$actionInfo = _$_CtrDetalhesVagaBaseActionController.startAction(
        name: '_CtrDetalhesVagaBase.tapInVoltar');
    try {
      return super.tapInVoltar();
    } finally {
      _$_CtrDetalhesVagaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vaga: ${vaga},
indexFoto: ${indexFoto},
ctrInfo: ${ctrInfo},
ctrContato: ${ctrContato},
loading: ${loading},
l: ${l},
loadingLocador: ${loadingLocador}
    ''';
  }
}
