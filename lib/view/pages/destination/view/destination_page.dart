import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/destination/view/destination_view.dart';

@RoutePage()
class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DestinationView();
  }
}
