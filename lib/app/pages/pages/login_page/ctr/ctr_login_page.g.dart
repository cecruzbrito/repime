// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ctr_login_page.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CtrLoginPage on _CtrLoginPageBase, Store {
  late final _$keyScaffoldAtom =
      Atom(name: '_CtrLoginPageBase.keyScaffold', context: context);

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

  late final _$ctrUsuarioAtom =
      Atom(name: '_CtrLoginPageBase.ctrUsuario', context: context);

  @override
  TextEditingController get ctrUsuario {
    _$ctrUsuarioAtom.reportRead();
    return super.ctrUsuario;
  }

  @override
  set ctrUsuario(TextEditingController value) {
    _$ctrUsuarioAtom.reportWrite(value, super.ctrUsuario, () {
      super.ctrUsuario = value;
    });
  }

  late final _$ctrSenhaAtom =
      Atom(name: '_CtrLoginPageBase.ctrSenha', context: context);

  @override
  TextEditingController get ctrSenha {
    _$ctrSenhaAtom.reportRead();
    return super.ctrSenha;
  }

  @override
  set ctrSenha(TextEditingController value) {
    _$ctrSenhaAtom.reportWrite(value, super.ctrSenha, () {
      super.ctrSenha = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_CtrLoginPageBase.loading', context: context);

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

  late final _$_CtrLoginPageBaseActionController =
      ActionController(name: '_CtrLoginPageBase', context: context);

  @override
  void _setLoading(bool value) {
    final _$actionInfo = _$_CtrLoginPageBaseActionController.startAction(
        name: '_CtrLoginPageBase._setLoading');
    try {
      return super._setLoading(value);
    } finally {
      _$_CtrLoginPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
keyScaffold: ${keyScaffold},
ctrUsuario: ${ctrUsuario},
ctrSenha: ${ctrSenha},
loading: ${loading}
    ''';
  }
}
