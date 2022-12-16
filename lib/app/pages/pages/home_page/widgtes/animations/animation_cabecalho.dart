import 'package:flutter/material.dart';

class AnimationCabecalho extends StatefulWidget {
  AnimationCabecalho({super.key, required this.ctrAnim, required this.child});
  Widget child;
  AnimationController ctrAnim;

  @override
  State<AnimationCabecalho> createState() => _AnimationCabecalhoState();
}

class _AnimationCabecalhoState extends State<AnimationCabecalho> {
  AnimationController get ctr => widget.ctrAnim;
  Widget get child => widget.child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final tweenOpc =
        Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: ctr, curve: const Interval(.2, 1)));
    final tweenMargin = Tween<double>(begin: -size.width * .015, end: 0)
        .animate(CurvedAnimation(parent: ctr, curve: const Interval(.2, .6)));
    return AnimatedBuilder(
        animation: ctr,
        builder: (_, __) {
          return SizedBox(
            height: size.height * .11,
            child: Stack(
              children: [
                Positioned(left: tweenMargin.value, child: Opacity(opacity: tweenOpc.value, child: child))
              ],
            ),
          );
        });
  }
}
