// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_enum_tipo_residencia.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EnumTipoResidenciaStore on _EnumTipoResidenciaStoreBase, Store {
  late final _$isSelectedAtom =
      Atom(name: '_EnumTipoResidenciaStoreBase.isSelected', context: context);

  @override
  bool get isSelected {
    _$isSelectedAtom.reportRead();
    return super.isSelected;
  }

  @override
  set isSelected(bool value) {
    _$isSelectedAtom.reportWrite(value, super.isSelected, () {
      super.isSelected = value;
    });
  }

  late final _$_EnumTipoResidenciaStoreBaseActionController =
      ActionController(name: '_EnumTipoResidenciaStoreBase', context: context);

  @override
  void setSelect([bool? value]) {
    final _$actionInfo = _$_EnumTipoResidenciaStoreBaseActionController
        .startAction(name: '_EnumTipoResidenciaStoreBase.setSelect');
    try {
      return super.setSelect(value);
    } finally {
      _$_EnumTipoResidenciaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSelected: ${isSelected}
    ''';
  }
}
