import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset('assets/repime_logo.png', height: size.height * .3),
    );
  }
}
