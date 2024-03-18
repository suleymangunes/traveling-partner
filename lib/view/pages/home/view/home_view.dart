// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/_product/home/page/home_base_page.dart';
import 'package:traveling_partner/view/_product/home/page/home_error_page.dart';
import 'package:traveling_partner/view/_product/home/page/home_initial_page.dart';
import 'package:traveling_partner/view/_product/home/page/home_loading_page.dart';
import 'package:traveling_partner/view/pages/home/view-model/i_location_state.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_cubit.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_state.dart';

/// A widget that displays the home view of the application.
///
/// It listens to the [LocationCubit] state changes and updates the UI accordingly
/// by displaying different pages based on the current state of the location data.
class HomeView extends StatelessWidget {
  /// Constructs a [HomeView] widget.
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LocationCubit, ILocationState>(
        builder: (context, state) {
          switch (state.status) {
            case StateEnum.initial:
              return const HomeInitialPage();
            case StateEnum.loading:
              return const HomeLoadingPage();
            case StateEnum.completed:
              return HomeBasePage(state: state as LocationCompletedState);
            case StateEnum.error:
              return const HomeErrorPage();
          }
        },
      ),
    );
  }
}
