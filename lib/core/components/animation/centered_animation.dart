import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';

class CenteredAnimation extends StatelessWidget {
  const CenteredAnimation({super.key, required this.animation});
  final AnimationEnum animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        animation.path,
        width: context.width,
      ),
    );
  }
}
