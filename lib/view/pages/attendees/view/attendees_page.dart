import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/attendees/view/attendees_view.dart';

@RoutePage()
class AttendeesPage extends StatelessWidget {
  const AttendeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AttendeesView();
  }
}
