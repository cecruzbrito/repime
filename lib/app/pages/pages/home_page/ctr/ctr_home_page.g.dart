// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ctr_home_page.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CtrHomePage on _CtrHomePageBase, Store {
  late final _$loadingAtom =
      Atom(name: '_CtrHomePageBase.loading', context: context);

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

  late final _$vagasAtom =
      Atom(name: '_CtrHomePageBase.vagas', context: context);

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

  late final _$_allVagasAtom =
      Atom(name: '_CtrHomePageBase._allVagas', context: context);

  @override
  ObservableList<Vaga> get _allVagas {
    _$_allVagasAtom.reportRead();
    return super._allVagas;
  }

  @override
  set _allVagas(ObservableList<Vaga> value) {
    _$_allVagasAtom.reportWrite(value, super._allVagas, () {
      super._allVagas = value;
    });
  }

  late final _$getVagasAsyncAction =
      AsyncAction('_CtrHomePageBase.getVagas', context: context);

  @override
  Future<void> getVagas() {
    return _$getVagasAsyncAction.run(() => super.getVagas());
  }

  late final _$_CtrHomePageBaseActionController =
      ActionController(name: '_CtrHomePageBase', context: context);

  @override
  void _setLoading(bool value) {
    final _$actionInfo = _$_CtrHomePageBaseActionController.startAction(
        name: '_CtrHomePageBase._setLoading');
    try {
      return super._setLoading(value);
    } finally {
      _$_CtrHomePageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
vagas: ${vagas}
    ''';
  }
}
