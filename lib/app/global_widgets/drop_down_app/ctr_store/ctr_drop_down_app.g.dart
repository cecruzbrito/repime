// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ctr_drop_down_app.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CtrDropDownApp<T> on _CtrDropDownAppBase<T>, Store {
  Computed<ObservableList<T>>? _$realItensComputed;

  @override
  ObservableList<T> get realItens => (_$realItensComputed ??=
          Computed<ObservableList<T>>(() => super.realItens,
              name: '_CtrDropDownAppBase.realItens'))
      .value;

  late final _$itensAtom =
      Atom(name: '_CtrDropDownAppBase.itens', context: context);

  @override
  List<T> get itens {
    _$itensAtom.reportRead();
    return super.itens;
  }

  @override
  set itens(List<T> value) {
    _$itensAtom.reportWrite(value, super.itens, () {
      super.itens = value;
    });
  }

  late final _$itensFilteredAtom =
      Atom(name: '_CtrDropDownAppBase.itensFiltered', context: context);

  @override
  ObservableList<T> get itensFiltered {
    _$itensFilteredAtom.reportRead();
    return super.itensFiltered;
  }

  @override
  set itensFiltered(ObservableList<T> value) {
    _$itensFilteredAtom.reportWrite(value, super.itensFiltered, () {
      super.itensFiltered = value;
    });
  }

  late final _$isEnabledAtom =
      Atom(name: '_CtrDropDownAppBase.isEnabled', context: context);

  @override
  bool get isEnabled {
    _$isEnabledAtom.reportRead();
    return super.isEnabled;
  }

  @override
  set isEnabled(bool value) {
    _$isEnabledAtom.reportWrite(value, super.isEnabled, () {
      super.isEnabled = value;
    });
  }

  late final _$_isHaveStringSearchAtom =
      Atom(name: '_CtrDropDownAppBase._isHaveStringSearch', context: context);

  @override
  bool get _isHaveStringSearch {
    _$_isHaveStringSearchAtom.reportRead();
    return super._isHaveStringSearch;
  }

  @override
  set _isHaveStringSearch(bool value) {
    _$_isHaveStringSearchAtom.reportWrite(value, super._isHaveStringSearch, () {
      super._isHaveStringSearch = value;
    });
  }

  late final _$_CtrDropDownAppBaseActionController =
      ActionController(name: '_CtrDropDownAppBase', context: context);

  @override
  void _setEnable({bool? value}) {
    final _$actionInfo = _$_CtrDropDownAppBaseActionController.startAction(
        name: '_CtrDropDownAppBase._setEnable');
    try {
      return super._setEnable(value: value);
    } finally {
      _$_CtrDropDownAppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTapItem(void Function(T) onTapCard, T item) {
    final _$actionInfo = _$_CtrDropDownAppBaseActionController.startAction(
        name: '_CtrDropDownAppBase.onTapItem');
    try {
      return super.onTapItem(onTapCard, item);
    } finally {
      _$_CtrDropDownAppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTapField() {
    final _$actionInfo = _$_CtrDropDownAppBaseActionController.startAction(
        name: '_CtrDropDownAppBase.onTapField');
    try {
      return super.onTapField();
    } finally {
      _$_CtrDropDownAppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setHaveStringSearch(bool value) {
    final _$actionInfo = _$_CtrDropDownAppBaseActionController.startAction(
        name: '_CtrDropDownAppBase._setHaveStringSearch');
    try {
      return super._setHaveStringSearch(value);
    } finally {
      _$_CtrDropDownAppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChange(String value) {
    final _$actionInfo = _$_CtrDropDownAppBaseActionController.startAction(
        name: '_CtrDropDownAppBase.onChange');
    try {
      return super.onChange(value);
    } finally {
      _$_CtrDropDownAppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
itens: ${itens},
itensFiltered: ${itensFiltered},
isEnabled: ${isEnabled},
realItens: ${realItens}
    ''';
  }
}
