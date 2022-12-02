import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'item_filter.g.dart';

class ItemFilter = _ItemFilterBase with _$ItemFilter;

abstract class _ItemFilterBase with Store {
  @observable
  String text;
  @observable
  IconData icon;
  @observable
  Function() tap;
  @observable
  bool isSelected;

  _ItemFilterBase({required this.icon, this.isSelected = false, required this.tap, required this.text});

  void setSelected(bool value) => isSelected = true;
}
