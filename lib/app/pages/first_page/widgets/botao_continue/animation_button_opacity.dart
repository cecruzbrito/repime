import 'package:flutter/cupertino.dart';

class AnimationButtonOpacity extends StatelessWidget {
  AnimationButtonOpacity({super.key, required this.child});
  final Widget child;

  final _tween = Tween<double>(begin: 0, end: 1);
  static const _duration = Duration(milliseconds: 1300);
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: _duration,
        builder: (context, value, _) => Opacity(opacity: value, child: child));
  }
}
