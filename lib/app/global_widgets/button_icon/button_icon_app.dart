import 'package:flutter/material.dart';

class ButtonIconApp extends StatelessWidget {
  const ButtonIconApp(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.sizeIcon,
      this.colorIcon = Colors.black,
      this.isAlternative = false,
      this.colorButton = Colors.black});
  final IconData icon;
  final Function() onPressed;
  final double sizeIcon;
  final Color colorButton;
  final bool isAlternative;
  final Color colorIcon;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            side: !isAlternative
                ? BorderSide.none
                : BorderSide(
                    width: size.width * .001,
                    color: colorButton,
                  ),
            borderRadius: BorderRadius.all(Radius.circular(size.width * .03))),
        elevation: isAlternative ? 0 : 8,
        minimumSize: Size(size.width * .15, 0),
        padding: EdgeInsets.symmetric(vertical: size.height * .02),
        backgroundColor: isAlternative ? Colors.transparent : colorButton,
      ),
      child: Icon(
        icon,
        size: sizeIcon,
        color: colorIcon,
      ),
    );
  }
}
