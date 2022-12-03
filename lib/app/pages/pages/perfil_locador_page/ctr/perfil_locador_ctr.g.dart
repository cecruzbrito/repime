// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perfil_locador_ctr.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PerfilLocadorCtr on _PerfilLocadorCtrBase, Store {
  late final _$vagasAtom =
      Atom(name: '_PerfilLocadorCtrBase.vagas', context: context);

  @override
  ObservableList<Vaga> get vagas {
    _$vagasAtom.reportRead();
    return super.vagas;
  }

  @override
  set vagas(ObservableList<Vaga> value) {
    _$vagasAtom.reportWrite(value, super.vagas, () {
      super.vagas = value;
    });
  }

  late final _$ctrContatoAtom =
      Atom(name: '_PerfilLocadorCtrBase.ctrContato', context: context);

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
      Atom(name: '_PerfilLocadorCtrBase.loading', context: context);

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

  late final _$deleteVagaAsyncAction =
      AsyncAction('_PerfilLocadorCtrBase.deleteVaga', context: context);

  @override
  Future<void> deleteVaga(Vaga v) {
    return _$deleteVagaAsyncAction.run(() => super.deleteVaga(v));
  }

  late final _$_PerfilLocadorCtrBaseActionController =
      ActionController(name: '_PerfilLocadorCtrBase', context: context);

  @override
  void setVagas(List<Vaga> value) {
    final _$actionInfo = _$_PerfilLocadorCtrBaseActionController.startAction(
        name: '_PerfilLocadorCtrBase.setVagas');
    try {
      return super.setVagas(value);
    } finally {
      _$_PerfilLocadorCtrBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setContato(String value) {
    final _$actionInfo = _$_PerfilLocadorCtrBaseActionController.startAction(
        name: '_PerfilLocadorCtrBase.setContato');
    try {
      return super.setContato(value);
    } finally {
      _$_PerfilLocadorCtrBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setLoading(bool value) {
    final _$actionInfo = _$_PerfilLocadorCtrBaseActionController.startAction(
        name: '_PerfilLocadorCtrBase._setLoading');
    try {
      return super._setLoading(value);
    } finally {
      _$_PerfilLocadorCtrBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vagas: ${vagas},
ctrContato: ${ctrContato},
loading: ${loading}
    ''';
  }
}
