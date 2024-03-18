import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
import 'package:traveling_partner/view/pages/destination/service/travel_date_service.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class TravelDateRange extends StatefulWidget {
  const TravelDateRange({
    super.key,
    required this.locationModel,
  });
  final LocationModel locationModel;

  @override
  State<TravelDateRange> createState() => _TravelDateRangeState();
}

class _TravelDateRangeState extends State<TravelDateRange> {
  DateTimeRange? dateTimeRange;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        LocaleKeys.pickTravelDate,
        textAlign: TextAlign.center,
        style: context.spacingHeadlineSmall,
      ),
      content: SizedBox(
        height: context.datePickerHeiht,
        width: context.datePickerWidth,
        child: RangeDatePicker(
          maxDate: DateTime.now().add(
            const Duration(days: 10000),
          ),
          minDate: DateTime.now(),
          onRangeSelected: (value) {
            setState(() {
              dateTimeRange = value;
            });
          },
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.primary,
            padding: context.buttonPadding,
            minimumSize: context.alertButtonSize,
          ),
          onPressed: () async {
            final user = FirebaseAuth.instance.currentUser;
            final name = user?.displayName;
            final email = user?.email;

            var locations = await FirebaseFirestore.instance
                .collection(DatabaseCollectionEnum.locations.name)
                .get();

            String? id;
            for (var i in locations.docs) {
              if (i.data()["name"] == widget.locationModel.name) {
                id = i.id;
                break;
              }
            }

            Map<String, dynamic> addedMap = {
              "users": [
                {
                  "name": name,
                  "email": email,
                  "starting_date": Timestamp.fromMillisecondsSinceEpoch(
                      dateTimeRange?.start.millisecondsSinceEpoch as int),
                  "ending_date": Timestamp.fromMillisecondsSinceEpoch(
                      dateTimeRange?.end.millisecondsSinceEpoch as int),
                }
              ]
            };

            for (var i in widget.locationModel.users!) {
              (addedMap["users"] as List).add({
                "name": i.name,
                "email": i.email,
                "starting_date": Timestamp.fromMillisecondsSinceEpoch(
                    i.startingDate?.millisecondsSinceEpoch as int),
                "ending_date": Timestamp.fromMillisecondsSinceEpoch(
                    i.endingDate?.millisecondsSinceEpoch as int),
              });
            }

            await TravelDateService(
                    firestoreInstance: FirebaseFirestore.instance)
                .setTravelDate(id: id, addedMap: addedMap);
          },
          child: Text(
            LocaleKeys.register,
            style: context.titleLargeSpacingBg,
          ),
        ),
      ],
    );
  }
}
