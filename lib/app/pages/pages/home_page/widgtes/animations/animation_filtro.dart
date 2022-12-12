import 'package:flutter/material.dart';

class AnimationFiltro extends StatelessWidget {
  AnimationFiltro({super.key, required this.child, required this.ctrAnim, required this.interval});
  Widget child;
  AnimationController ctrAnim;
  Interval interval;
  Animation<double> get tweenAnimation =>
      Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: ctrAnim, curve: interval));
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ctrAnim,
      builder: (_, __) => Transform.scale(
        scale: tweenAnimation.value,
        child: child,
      ),
    );
  }
}
