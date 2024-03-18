import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/pages/home/view-model/get_it_location_instance.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_cubit.dart';
import 'package:traveling_partner/view/pages/home/view/home_view.dart';

/// A page widget marked for auto-routing, serving as the home page of the app.
///
/// This widget is responsible for providing a [LocationCubit] to the [HomeView]
/// widget. It utilizes the [GetItLocationInstance] mixin to access the location
/// service instance for fetching location data.
@RoutePage()
class HomePage extends StatelessWidget with GetItLocationInstance {
  /// Constructs a [HomePage] widget.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LocationCubit(locationService: locationService())..getLocations(),
      child: const HomeView(),
    );
  }
}
