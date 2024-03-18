import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/attendees/view/attendees_view.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// Represents the page for viewing attendees.
@RoutePage()
class AttendeesPage extends StatelessWidget {
  /// Constructs an [AttendeesPage] with the provided [locationModel].
  const AttendeesPage({required this.locationModel, super.key});

  /// The location model associated with the attendees.
  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return AttendeesView(locationModel: locationModel);
  }
}
