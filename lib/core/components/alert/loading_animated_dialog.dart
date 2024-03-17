import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';

class LoadingAnimatedDialog extends StatelessWidget {
  const LoadingAnimatedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Lottie.asset(AnimationEnum.travel.path),
    );
  }
}
