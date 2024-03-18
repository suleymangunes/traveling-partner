// ignore_for_file: lines_longer_than_80_chars

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
import 'package:traveling_partner/view/pages/destination/service/i_travel_date_service.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// TravelDateService class inherits from the ITravelDateService interface.
class TravelDateService extends ITravelDateService {
  /// Constructor takes an instance of FirebaseFirestore as a required parameter.
  TravelDateService({required this.firestoreInstance});

  /// Firestore instance for database connect
  final FirebaseFirestore firestoreInstance;

  @override
  Future<void> setTravelDate({
    required LocationModel locationModel,
    required DateTimeRange? dateTimeRange,
  }) async {
    final user = FirebaseAuth.instance.currentUser;
    final name = user?.displayName;
    final email = user?.email;

    final locations = await FirebaseFirestore.instance
        .collection(DatabaseCollectionEnum.locations.name)
        .get();

    String? id;
    for (final i in locations.docs) {
      if (i.data()['name'] == locationModel.name) {
        id = i.id;
        break;
      }
    }

    final addedMap = <String, dynamic>{
      'users': [
        {
          'name': name,
          'email': email,
          'starting_date': Timestamp.fromMillisecondsSinceEpoch(
            dateTimeRange!.start.millisecondsSinceEpoch,
          ),
          'ending_date': Timestamp.fromMillisecondsSinceEpoch(
            dateTimeRange.end.millisecondsSinceEpoch,
          ),
        }
      ],
    };

    for (final i in locationModel.users!) {
      (addedMap['users'] as List).add({
        'name': i.name,
        'email': i.email,
        'starting_date': Timestamp.fromMillisecondsSinceEpoch(
          i.startingDate!.millisecondsSinceEpoch,
        ),
        'ending_date': Timestamp.fromMillisecondsSinceEpoch(
          i.endingDate!.millisecondsSinceEpoch,
        ),
      });
    }

    await FirebaseFirestore.instance
        .collection(DatabaseCollectionEnum.locations.name)
        .doc(id)
        .update(addedMap);
  }
}
