import 'package:flutter/material.dart';

class AnimationLoading extends StatelessWidget {
  AnimationLoading({super.key, required this.child});
  final Widget child;

  final Tween<double> _tween = Tween<double>(begin: 0, end: 1);
  static const Duration _duration = Duration(milliseconds: 900);
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: _duration,
        curve: Curves.fastOutSlowIn,
        builder: (___, value, __) => Transform.scale(scale: value, child: child));
  }
}
