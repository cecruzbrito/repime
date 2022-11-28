import 'package:flutter/cupertino.dart';

class SettingsFieldApp {
  TextEditingController? ctr;
  final String? labelText, hintText;
  void Function()? onTap;
  void Function(String)? onChange;
  String? Function(String?)? validator;
  bool obscureText;
  Widget? suffixWidget;
  int? max;
  bool isMultLine;
  bool? isAlternative;

  SettingsFieldApp(
      {this.hintText,
      this.max,
      this.labelText,
      this.onChange,
      this.onTap,
      this.ctr,
      this.validator,
      this.isMultLine = false,
      this.isAlternative = false,
      this.obscureText = false,
      this.suffixWidget});
}
