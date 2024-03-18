import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class AttendeesView extends StatelessWidget {
  const AttendeesView({super.key, required this.locationModel});
  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: locationModel.users?.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(locationModel.users![index].name.toString());
        },
      ),
    );
  }
}
