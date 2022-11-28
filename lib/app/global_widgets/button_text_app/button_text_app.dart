import 'package:flutter/material.dart';

class ButtonTextApp extends StatelessWidget {
  const ButtonTextApp({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(size.width * .02))),
          elevation: 8,
          padding: EdgeInsets.symmetric(vertical: size.height * .02),
          backgroundColor: Colors.black,
          minimumSize: const Size(double.maxFinite, 0)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: size.height * .02),
      ),
    );
  }
}
