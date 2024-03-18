import 'package:flutter/material.dart';
import 'package:traveling_partner/product/widget/animation/centered_traveling_animation.dart';

/// Widget representing the loading page for the home screen.
class HomeLoadingPage extends StatelessWidget {
  /// Constructs a [HomeLoadingPage] widget.
  const HomeLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CenteredTravelingAnimation();
  }
}
