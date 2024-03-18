import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/view/_product/destination/widget/alert/travel_date_range.dart';
import 'package:traveling_partner/view/_product/destination/widget/button/whos_with_me_button.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class BottomNavigationFeatures extends StatelessWidget {
  const BottomNavigationFeatures({
    super.key,
    required this.location,
  });
  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.iconBgPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: context.colorScheme.primary,
              size: context.bigIconSize,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return TravelDateRange(locationModel: location);
                },
              );
            },
          ),
          WhosWithMeButton(
            locationModel: location,
          ),
        ],
      ),
    );
  }
}
