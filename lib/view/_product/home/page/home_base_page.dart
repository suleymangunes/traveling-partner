import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/card/location_card.dart';
import 'package:traveling_partner/view/_product/home/page/home_error_page.dart';
import 'package:traveling_partner/view/_product/home/widget/base_home_app_bar.dart';
import 'package:traveling_partner/view/_product/home/widget/base_home_page_drawer.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_state.dart';

/// A base page widget for the home screen.
class HomeBasePage extends StatelessWidget {
  /// Constructs a [HomeBasePage] widget.
  const HomeBasePage({required this.state, super.key});

  /// The state of locations to display.
  final LocationCompletedState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BaseHomePageDrawer(),
      appBar: const BaseHomeAppBar(autoLeading: true),
      body: state.response.isNotEmpty
          ? ListView.builder(
              itemCount: state.response.length,
              itemBuilder: (BuildContext context, int index) {
                final location = state.response[index] as LocationModel;
                return LocationCard(location: location);
              },
            )
          : const HomeErrorPage(),
    );
  }
}
