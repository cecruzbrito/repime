// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ctr_detalhes_vaga_mapa.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CtrDetalhesVagaMapa on _CtrDetalhesVagaMapaBase, Store {
  late final _$loadingAtom =
      Atom(name: '_CtrDetalhesVagaMapaBase.loading', context: context);

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

  late final _$vagaAtom =
      Atom(name: '_CtrDetalhesVagaMapaBase.vaga', context: context);

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

  late final _$localizationResidenciaAtom = Atom(
      name: '_CtrDetalhesVagaMapaBase.localizationResidencia',
      context: context);

  @override
  Location? get localizationResidencia {
    _$localizationResidenciaAtom.reportRead();
    return super.localizationResidencia;
  }

  @override
  set localizationResidencia(Location? value) {
    _$localizationResidenciaAtom
        .reportWrite(value, super.localizationResidencia, () {
      super.localizationResidencia = value;
    });
  }

  late final _$localizationUniversidadeAtom = Atom(
      name: '_CtrDetalhesVagaMapaBase.localizationUniversidade',
      context: context);

  @override
  Location? get localizationUniversidade {
    _$localizationUniversidadeAtom.reportRead();
    return super.localizationUniversidade;
  }

  @override
  set localizationUniversidade(Location? value) {
    _$localizationUniversidadeAtom
        .reportWrite(value, super.localizationUniversidade, () {
      super.localizationUniversidade = value;
    });
  }

  late final _$ctrMapAtom =
      Atom(name: '_CtrDetalhesVagaMapaBase.ctrMap', context: context);

  @override
  GoogleMapController? get ctrMap {
    _$ctrMapAtom.reportRead();
    return super.ctrMap;
  }

  @override
  set ctrMap(GoogleMapController? value) {
    _$ctrMapAtom.reportWrite(value, super.ctrMap, () {
      super.ctrMap = value;
    });
  }

  late final _$iconUniversidadeAtom =
      Atom(name: '_CtrDetalhesVagaMapaBase.iconUniversidade', context: context);

  @override
  BitmapDescriptor? get iconUniversidade {
    _$iconUniversidadeAtom.reportRead();
    return super.iconUniversidade;
  }

  @override
  set iconUniversidade(BitmapDescriptor? value) {
    _$iconUniversidadeAtom.reportWrite(value, super.iconUniversidade, () {
      super.iconUniversidade = value;
    });
  }

  late final _$iconResidenciaAtom =
      Atom(name: '_CtrDetalhesVagaMapaBase.iconResidencia', context: context);

  @override
  BitmapDescriptor? get iconResidencia {
    _$iconResidenciaAtom.reportRead();
    return super.iconResidencia;
  }

  @override
  set iconResidencia(BitmapDescriptor? value) {
    _$iconResidenciaAtom.reportWrite(value, super.iconResidencia, () {
      super.iconResidencia = value;
    });
  }

  late final _$getLocalizationAsyncAction =
      AsyncAction('_CtrDetalhesVagaMapaBase.getLocalization', context: context);

  @override
  Future<void> getLocalization() {
    return _$getLocalizationAsyncAction.run(() => super.getLocalization());
  }

  late final _$setCtrMapAsyncAction =
      AsyncAction('_CtrDetalhesVagaMapaBase.setCtrMap', context: context);

  @override
  Future<void> setCtrMap(GoogleMapController value) {
    return _$setCtrMapAsyncAction.run(() => super.setCtrMap(value));
  }

  late final _$_setIconsMapAsyncAction =
      AsyncAction('_CtrDetalhesVagaMapaBase._setIconsMap', context: context);

  @override
  Future<Uint8List> _setIconsMap(String path) {
    return _$_setIconsMapAsyncAction.run(() => super._setIconsMap(path));
  }

  late final _$_setIconsAsyncAction =
      AsyncAction('_CtrDetalhesVagaMapaBase._setIcons', context: context);

  @override
  Future<void> _setIcons() {
    return _$_setIconsAsyncAction.run(() => super._setIcons());
  }

  late final _$_CtrDetalhesVagaMapaBaseActionController =
      ActionController(name: '_CtrDetalhesVagaMapaBase', context: context);

  @override
  void _setLoading(bool value) {
    final _$actionInfo = _$_CtrDetalhesVagaMapaBaseActionController.startAction(
        name: '_CtrDetalhesVagaMapaBase._setLoading');
    try {
      return super._setLoading(value);
    } finally {
      _$_CtrDetalhesVagaMapaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVaga(Vaga value) {
    final _$actionInfo = _$_CtrDetalhesVagaMapaBaseActionController.startAction(
        name: '_CtrDetalhesVagaMapaBase.setVaga');
    try {
      return super.setVaga(value);
    } finally {
      _$_CtrDetalhesVagaMapaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void tapInVoltar() {
    final _$actionInfo = _$_CtrDetalhesVagaMapaBaseActionController.startAction(
        name: '_CtrDetalhesVagaMapaBase.tapInVoltar');
    try {
      return super.tapInVoltar();
    } finally {
      _$_CtrDetalhesVagaMapaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  LatLng computeCentroid(List<LatLng> points) {
    final _$actionInfo = _$_CtrDetalhesVagaMapaBaseActionController.startAction(
        name: '_CtrDetalhesVagaMapaBase.computeCentroid');
    try {
      return super.computeCentroid(points);
    } finally {
      _$_CtrDetalhesVagaMapaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toStringUniversidade() {
    final _$actionInfo = _$_CtrDetalhesVagaMapaBaseActionController.startAction(
        name: '_CtrDetalhesVagaMapaBase.toStringUniversidade');
    try {
      return super.toStringUniversidade();
    } finally {
      _$_CtrDetalhesVagaMapaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
vaga: ${vaga},
localizationResidencia: ${localizationResidencia},
localizationUniversidade: ${localizationUniversidade},
ctrMap: ${ctrMap},
iconUniversidade: ${iconUniversidade},
iconResidencia: ${iconResidencia}
    ''';
  }
}
