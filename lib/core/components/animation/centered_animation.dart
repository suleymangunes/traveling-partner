import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';

/// **CenteredAnimation Widget**
///
/// A widget representing a centered animation.
/// This widget displays an animation centered within its parent.
///
/// Requires the following dependencies:
/// - lottie:
///
/// Example Usage:
/// ```dart
/// CenteredAnimation(animation: AnimationEnum.example)
/// ```
class CenteredAnimation extends StatelessWidget {
  /// Constructor for CenteredAnimation.
  ///
  /// [animation] specifies the animation to display.
  /// [key] is an optional parameter for widget identification.
  const CenteredAnimation({required this.animation, super.key});

  /// The animation to display.
  final AnimationEnum animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      // Displaying the animation using Lottie, centered within its parent
      child: Lottie.asset(
        animation.path,
        width: context.width,
      ),
    );
  }
}
