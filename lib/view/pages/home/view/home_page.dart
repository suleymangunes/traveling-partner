import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/home/view/home_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
