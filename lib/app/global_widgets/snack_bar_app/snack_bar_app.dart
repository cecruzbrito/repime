import 'package:flutter/material.dart';

class SnackBarApp {
  static SnackBar show({required String text, required BuildContext context}) {
    var size = MediaQuery.of(context).size;
    return SnackBar(
        backgroundColor: Colors.white,
        content: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: size.height * .015, color: Colors.black)));
  }
}
