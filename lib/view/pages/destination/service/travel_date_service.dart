import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
import 'package:traveling_partner/view/pages/destination/service/i_travel_date_service.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class TravelDateService extends ITravelDateService {
  final FirebaseFirestore firestoreInstance;

  TravelDateService({required this.firestoreInstance});

  @override
  Future<void> setTravelDate({
    required LocationModel locationModel,
    required DateTimeRange? dateTimeRange,
  }) async {
    final user = FirebaseAuth.instance.currentUser;
    final name = user?.displayName;
    final email = user?.email;

    var locations = await FirebaseFirestore.instance
        .collection(DatabaseCollectionEnum.locations.name)
        .get();

    String? id;
    for (var i in locations.docs) {
      if (i.data()["name"] == locationModel.name) {
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

    for (var i in locationModel.users!) {
      (addedMap["users"] as List).add({
        "name": i.name,
        "email": i.email,
        "starting_date": Timestamp.fromMillisecondsSinceEpoch(
            i.startingDate?.millisecondsSinceEpoch as int),
        "ending_date": Timestamp.fromMillisecondsSinceEpoch(
            i.endingDate?.millisecondsSinceEpoch as int),
      });
    }

    await FirebaseFirestore.instance
        .collection(DatabaseCollectionEnum.locations.name)
        .doc(id)
        .update(addedMap);
  }
}
