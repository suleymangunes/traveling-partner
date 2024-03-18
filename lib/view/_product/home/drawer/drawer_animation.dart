import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';

/// A widget displaying a Lottie animation for the drawer.
class DrawerAnimation extends StatelessWidget {
  /// Constructs a [DrawerAnimation] widget.
  const DrawerAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(AnimationEnum.walk.path);
  }
}
