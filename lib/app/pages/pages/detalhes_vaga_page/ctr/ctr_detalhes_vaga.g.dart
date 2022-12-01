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

  late final _$getDetalhesVagaAsyncAction =
      AsyncAction('_CtrDetalhesVagaBase.getDetalhesVaga', context: context);

  @override
  Future getDetalhesVaga() {
    return _$getDetalhesVagaAsyncAction.run(() => super.getDetalhesVaga());
  }

  late final _$_CtrDetalhesVagaBaseActionController =
      ActionController(name: '_CtrDetalhesVagaBase', context: context);

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
  String toString() {
    return '''
vaga: ${vaga},
loading: ${loading}
    ''';
  }
}
