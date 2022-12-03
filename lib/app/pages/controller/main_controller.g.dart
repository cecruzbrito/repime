// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainController on _MainControllerBase, Store {
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_MainControllerBase.isValid'))
      .value;

  late final _$locatarioAtualAtom =
      Atom(name: '_MainControllerBase.locatarioAtual', context: context);

  @override
  Locatario get locatarioAtual {
    _$locatarioAtualAtom.reportRead();
    return super.locatarioAtual;
  }

  @override
  set locatarioAtual(Locatario value) {
    _$locatarioAtualAtom.reportWrite(value, super.locatarioAtual, () {
      super.locatarioAtual = value;
    });
  }

  late final _$locadorAtualAtom =
      Atom(name: '_MainControllerBase.locadorAtual', context: context);

  @override
  Locador get locadorAtual {
    _$locadorAtualAtom.reportRead();
    return super.locadorAtual;
  }

  @override
  set locadorAtual(Locador value) {
    _$locadorAtualAtom.reportWrite(value, super.locadorAtual, () {
      super.locadorAtual = value;
    });
  }

  late final _$_MainControllerBaseActionController =
      ActionController(name: '_MainControllerBase', context: context);

  @override
  void setLocatarioAtual(Locatario value) {
    final _$actionInfo = _$_MainControllerBaseActionController.startAction(
        name: '_MainControllerBase.setLocatarioAtual');
    try {
      return super.setLocatarioAtual(value);
    } finally {
      _$_MainControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLocadorAtual(Locador value) {
    final _$actionInfo = _$_MainControllerBaseActionController.startAction(
        name: '_MainControllerBase.setLocadorAtual');
    try {
      return super.setLocadorAtual(value);
    } finally {
      _$_MainControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
locatarioAtual: ${locatarioAtual},
locadorAtual: ${locadorAtual},
isValid: ${isValid}
    ''';
  }
}
