import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/attendees/view/attendees_view.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

@RoutePage()
class AttendeesPage extends StatelessWidget {
  const AttendeesPage({super.key, required this.locationModel});
  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return AttendeesView(locationModel: locationModel);
  }
}
