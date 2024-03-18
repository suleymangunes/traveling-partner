import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/animation/centered_animation.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';

/// A widget that displays a centered error animation.
class CenteredErrorAnimation extends StatelessWidget {
  /// Constructs a [CenteredErrorAnimation] widget.
  const CenteredErrorAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CenteredAnimation(
      animation: AnimationEnum.error,
    );
  }
}
