import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';

class DrawerAnimation extends StatelessWidget {
  const DrawerAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(AnimationEnum.walk.path);
  }
}
