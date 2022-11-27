import 'package:flutter/cupertino.dart';

class SettingsFieldApp {
  TextEditingController? ctr;
  final String? labelText, hintText;
  void Function()? onTap;
  void Function(String)? onChange;

  SettingsFieldApp({this.hintText, this.labelText, this.onChange, this.onTap, this.ctr});
}
