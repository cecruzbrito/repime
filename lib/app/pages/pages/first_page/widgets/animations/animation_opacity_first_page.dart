import 'package:flutter/material.dart';

class AnimationOpacityFirstPage extends StatelessWidget {
  const AnimationOpacityFirstPage(
      {super.key, required this.ctrAnimation, required this.child, required this.interval});
  final Widget child;
  final AnimationController ctrAnimation;
  final Interval interval;

  Animation<double> get _tween =>
      Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: ctrAnimation, curve: interval));
  @override
  Widget build(BuildContext context) {
    _tween;
    return AnimatedBuilder(
        animation: ctrAnimation, builder: (_, __) => Opacity(opacity: _tween.value, child: child));
  }
}
