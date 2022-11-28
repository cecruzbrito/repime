import 'package:flutter/material.dart';

class ButtonIconApp extends StatelessWidget {
  const ButtonIconApp(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.sizeIcon,
      this.colorButton = Colors.black});
  final IconData icon;
  final Function() onPressed;
  final double sizeIcon;
  final Color colorButton;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(size.width * .03))),
        elevation: 8,
        padding: EdgeInsets.symmetric(vertical: size.height * .02),
        backgroundColor: colorButton,
      ),
      child: Icon(
        icon,
        size: sizeIcon,
        color: Colors.white,
      ),
    );
  }
}
