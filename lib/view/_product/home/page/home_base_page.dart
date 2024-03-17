import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/card/location_card.dart';
import 'package:traveling_partner/view/_product/home/page/home_error_page.dart';
import 'package:traveling_partner/view/_product/home/widget/base_home_app_bar.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_state.dart';

class HomeBasePage extends StatelessWidget {
  const HomeBasePage({super.key, required this.state});
  final LocationCompletedState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Text("data"),
      ),
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