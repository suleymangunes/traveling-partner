import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';

/// **LoadingAnimatedDialog Widget**
///
/// A widget representing an animated loading dialog.
/// This dialog displays a loading animation.
///
/// Requires the following dependencies:
/// - lottie:
///
/// Example Usage:
/// ```dart
/// LoadingAnimatedDialog()
/// ```
class LoadingAnimatedDialog extends StatelessWidget {
  /// Constructor for LoadingAnimatedDialog.
  ///
  /// [key] is an optional parameter for widget identification.
  const LoadingAnimatedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    // Displaying loading animation using Lottie
    return Dialog(
      child: Lottie.asset(AnimationEnum.fly.path),
    );
  }
}
