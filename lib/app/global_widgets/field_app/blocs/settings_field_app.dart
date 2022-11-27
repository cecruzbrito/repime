import 'package:flutter/cupertino.dart';

class SettingsFieldApp {
  TextEditingController? ctr;
  final String? labelText, hintText;
  void Function()? onTap;
  void Function(String)? onChange;
  String? Function(String?)? validator;

  SettingsFieldApp({this.hintText, this.labelText, this.onChange, this.onTap, this.ctr, this.validator});
}
