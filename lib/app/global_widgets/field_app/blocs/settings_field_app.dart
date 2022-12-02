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
  bool isDate;
  bool isEnable;

  SettingsFieldApp(
      {this.hintText,
      this.max,
      this.labelText,
      this.onChange,
      this.onTap,
      this.isEnable = true,
      this.ctr,
      this.validator,
      this.isMultLine = false,
      this.isAlternative = false,
      this.obscureText = false,
      this.isDate = false,
      this.suffixWidget});
}
