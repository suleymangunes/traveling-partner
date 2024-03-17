import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/destination/view/destination_view.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

@RoutePage()
class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key, required this.location});

  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return DestinationView(locationModel: location);
  }
}
