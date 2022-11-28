import 'package:flutter/material.dart';

import 'blocs/settings_field_app.dart';

class FieldApp extends StatelessWidget {
  FieldApp({super.key, required this.settingsFieldApp});

  SettingsFieldApp settingsFieldApp;

  OutlineInputBorder _makeBorder(c) => OutlineInputBorder(borderSide: BorderSide(color: c));

  final _colorEnable = Colors.black;
  final _colorDisable = Colors.grey[300];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var fontSize = size.height * .02;

    return TextFormField(
      obscureText: settingsFieldApp.obscureText,
      controller: settingsFieldApp.ctr,
      onTap: settingsFieldApp.onTap,
      onChanged: settingsFieldApp.onChange,
      cursorColor: _colorEnable,
      maxLength: settingsFieldApp.max,
      keyboardType: settingsFieldApp.isMultLine ? TextInputType.multiline : null,
      maxLines: settingsFieldApp.isMultLine ? 3 : 1,
      minLines: settingsFieldApp.isMultLine ? 3 : 1,
      validator: settingsFieldApp.validator,
      style: TextStyle(fontSize: fontSize, color: _colorEnable),
      decoration: InputDecoration(
          suffixIcon: settingsFieldApp.suffixWidget,
          labelText: settingsFieldApp.labelText,
          hintText: settingsFieldApp.hintText,
          labelStyle: TextStyle(color: _colorEnable),
          border: _makeBorder(_colorDisable),
          focusedBorder: _makeBorder(_colorEnable),
          enabledBorder: _makeBorder(_colorDisable)),
    );
  }
}
