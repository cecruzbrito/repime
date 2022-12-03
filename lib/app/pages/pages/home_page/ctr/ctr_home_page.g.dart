// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ctr_home_page.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CtrHomePage on _CtrHomePageBase, Store {
  Computed<ObservableList<Vaga>>? _$vagasComputed;

  @override
  ObservableList<Vaga> get vagas =>
      (_$vagasComputed ??= Computed<ObservableList<Vaga>>(() => super.vagas,
              name: '_CtrHomePageBase.vagas'))
          .value;

  late final _$keyScaffoldAtom =
      Atom(name: '_CtrHomePageBase.keyScaffold', context: context);

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

  late final _$filtrosAtom =
      Atom(name: '_CtrHomePageBase.filtros', context: context);

  @override
  ObservableList<ItemFilter> get filtros {
    _$filtrosAtom.reportRead();
    return super.filtros;
  }

  @override
  set filtros(ObservableList<ItemFilter> value) {
    _$filtrosAtom.reportWrite(value, super.filtros, () {
      super.filtros = value;
    });
  }

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
  void _setFiltros() {
    final _$actionInfo = _$_CtrHomePageBaseActionController.startAction(
        name: '_CtrHomePageBase._setFiltros');
    try {
      return super._setFiltros();
    } finally {
      _$_CtrHomePageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setFiltroRep(ItemFilter item) {
    final _$actionInfo = _$_CtrHomePageBaseActionController.startAction(
        name: '_CtrHomePageBase._setFiltroRep');
    try {
      return super._setFiltroRep(item);
    } finally {
      _$_CtrHomePageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setFiltroKitNet(ItemFilter item) {
    final _$actionInfo = _$_CtrHomePageBaseActionController.startAction(
        name: '_CtrHomePageBase._setFiltroKitNet');
    try {
      return super._setFiltroKitNet(item);
    } finally {
      _$_CtrHomePageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setFiltroSemTrotes(ItemFilter item) {
    final _$actionInfo = _$_CtrHomePageBaseActionController.startAction(
        name: '_CtrHomePageBase._setFiltroSemTrotes');
    try {
      return super._setFiltroSemTrotes(item);
    } finally {
      _$_CtrHomePageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setFiltroVagasMensalidade(ItemFilter item) {
    final _$actionInfo = _$_CtrHomePageBaseActionController.startAction(
        name: '_CtrHomePageBase._setFiltroVagasMensalidade');
    try {
      return super._setFiltroVagasMensalidade(item);
    } finally {
      _$_CtrHomePageBaseActionController.endAction(_$actionInfo);
    }
  }

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
  List<Vaga> _removeTipo(EnumTiposResidencia e, {bool? semTrote}) {
    final _$actionInfo = _$_CtrHomePageBaseActionController.startAction(
        name: '_CtrHomePageBase._removeTipo');
    try {
      return super._removeTipo(e, semTrote: semTrote);
    } finally {
      _$_CtrHomePageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
keyScaffold: ${keyScaffold},
filtros: ${filtros},
loading: ${loading},
vagas: ${vagas}
    ''';
  }
}
