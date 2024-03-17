import 'package:flutter/material.dart';
import 'package:traveling_partner/product/widget/animation/centered_traveling_animation.dart';

class HomeLoadingPage extends StatelessWidget {
  const HomeLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CenteredTravelingAnimation();
  }
}
