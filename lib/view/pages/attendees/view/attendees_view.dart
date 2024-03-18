import 'package:flutter/material.dart';
import 'package:traveling_partner/view/_product/attendees/widget/appbar/attendees_app_bar.dart';
import 'package:traveling_partner/view/_product/attendees/widget/card/user_card.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class AttendeesView extends StatelessWidget {
  const AttendeesView({super.key, required this.locationModel});
  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AttendeesAppBar(),
      body: ListView.builder(
        itemCount: locationModel.users?.length,
        itemBuilder: (BuildContext context, int index) {
          final user = locationModel.users![index];
          return UserCard(user: user);
        },
      ),
    );
  }
}
