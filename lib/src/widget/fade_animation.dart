import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  const FadeAnimation({
    required this.delay,
    required this.child,
    super.key,
  });
  final double delay;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween(
        AniProps.opacity,
        Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 500),
      )
      ..tween(
        AniProps.translateY,
        Tween(begin: -30.0, end: 0.0),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );

    return PlayAnimationBuilder(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, value, child) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(0, value.get(AniProps.translateY)),
          child: child,
        ),
      ),
    );
  }
}

class FadeAnimationWithCustomTween extends StatelessWidget {
  const FadeAnimationWithCustomTween({
    required this.delay,
    required this.child,
    required this.tween,
    required this.control,
    super.key,
  });
  final double delay;
  final Widget child;
  final MovieTween tween;
  final Control control;

  @override
  Widget build(BuildContext context) {
    return CustomAnimationBuilder(
      control: control,
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, value, child) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(0, value.get(AniProps.translateY)),
          child: child,
        ),
      ),
    );
  }
}
