// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/view/_product/destination/widget/bottom-navigation/bottom_navigation_features.dart';
import 'package:traveling_partner/view/_product/destination/widget/button/back_with_bg.dart';
import 'package:traveling_partner/view/_product/destination/widget/button/share_destination_button.dart';
import 'package:traveling_partner/view/_product/destination/widget/image/destination_image.dart';
import 'package:traveling_partner/view/_product/destination/widget/text/about_text.dart';
import 'package:traveling_partner/view/_product/destination/widget/text/destination_definition.dart';
import 'package:traveling_partner/view/_product/destination/widget/text/destination_description.dart';
import 'package:traveling_partner/view/_product/destination/widget/text/destination_name.dart';
import 'package:traveling_partner/view/_product/destination/widget/text/places_text.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// DestinationView widget displays information about a travel destination.
class DestinationView extends StatelessWidget {
  /// Constructor takes a required `locationModel` parameter of type `LocationModel`.
  const DestinationView({required this.locationModel, super.key});

  /// Location model for data
  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: context.stackHeight,
              child: Stack(
                children: [
                  DestinationImage(locationModel: locationModel),
                  Positioned(
                    top: context.iconTopSpace,
                    left: context.iconLeftSpace,
                    child: const BackWithBg(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: context.contentPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      DestinationName(locationModel: locationModel),
                      const Spacer(),
                      ShareDestionationButton(locationModel: locationModel),
                    ],
                  ),
                  DestinationDefinition(locationModel: locationModel),
                  context.smallSizedBox,
                  const AboutText(),
                  DestinationDescription(locationModel: locationModel),
                  context.smallSizedBox,
                  const PlacesText(),
                  _destinationPlaces(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationFeatures(location: locationModel),
    );
  }

  ListView _destinationPlaces() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: locationModel.places?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        return Text(
          '• ${locationModel.places![index]}',
          style: context.bodyLarge,
        );
      },
    );
  }
}
