// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_filter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ItemFilter on _ItemFilterBase, Store {
  late final _$textAtom = Atom(name: '_ItemFilterBase.text', context: context);

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  late final _$iconAtom = Atom(name: '_ItemFilterBase.icon', context: context);

  @override
  IconData get icon {
    _$iconAtom.reportRead();
    return super.icon;
  }

  @override
  set icon(IconData value) {
    _$iconAtom.reportWrite(value, super.icon, () {
      super.icon = value;
    });
  }

  late final _$tapAtom = Atom(name: '_ItemFilterBase.tap', context: context);

  @override
  dynamic Function() get tap {
    _$tapAtom.reportRead();
    return super.tap;
  }

  @override
  set tap(dynamic Function() value) {
    _$tapAtom.reportWrite(value, super.tap, () {
      super.tap = value;
    });
  }

  late final _$isSelectedAtom =
      Atom(name: '_ItemFilterBase.isSelected', context: context);

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

  @override
  String toString() {
    return '''
text: ${text},
icon: ${icon},
tap: ${tap},
isSelected: ${isSelected}
    ''';
  }
}
