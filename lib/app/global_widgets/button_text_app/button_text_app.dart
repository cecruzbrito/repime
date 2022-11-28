import 'package:flutter/material.dart';

class ButtonTextApp extends StatelessWidget {
  const ButtonTextApp({super.key, this.isAlternative = false, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;
  final bool isAlternative;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: !isAlternative
                  ? BorderSide.none
                  : BorderSide(color: Colors.black26, width: size.width * .004),
              borderRadius: BorderRadius.all(Radius.circular(size.width * .02))),
          elevation: isAlternative ? 8 : 8,
          padding: EdgeInsets.symmetric(vertical: size.height * .02),
          backgroundColor: isAlternative ? Colors.white : Colors.black,
          minimumSize: const Size(double.maxFinite, 0)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: isAlternative ? Colors.black : Colors.white, fontSize: size.height * .02),
      ),
    );
  }
}
