// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/pages/destination/view-model/getit_travel_date_instance.dart';
import 'package:traveling_partner/view/pages/destination/view-model/travel_date_cubit.dart';
import 'package:traveling_partner/view/pages/destination/view/destination_view.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// Annotates this class as a route page for navigation using AutoRoute.
@RoutePage()
class DestinationPage extends StatelessWidget with GetItTravelDateInstance {
  /// Constructor takes a required `location` parameter of type `LocationModel`.
  const DestinationPage({required this.location, super.key});

  /// Locationmodel for destination page
  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TravelDateCubit(
        travelDateService: travelDateService(),
      ),
      child: DestinationView(locationModel: location),
    );
  }
}
