// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:traveling_partner/view/_product/attendees/widget/appbar/attendees_app_bar.dart';
import 'package:traveling_partner/view/_product/attendees/widget/card/user_card.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// This code defines a widget called `AttendeesView`.
/// This widget shows the attendees (users) at the location provided by `locationModel`
class AttendeesView extends StatelessWidget {
  /// The constructor takes the location model as a parameter.
  const AttendeesView({required this.locationModel, super.key});

  /// Location model for users
  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AttendeesAppBar(),
      body: ListView.builder(
        itemCount: locationModel.users?.length,
        itemBuilder: (BuildContext context, int index) {
          final user = locationModel.users![index];
          return UserCard(
            user: user,
            location: locationModel,
          );
        },
      ),
    );
  }
}
