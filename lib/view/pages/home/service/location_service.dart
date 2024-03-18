// ignore_for_file: lines_longer_than_80_chars

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';
import 'package:traveling_partner/view/pages/home/service/location_repository.dart';

/// Provides an implementation of [LocationRepository] using Firebase Firestore.
///
/// Utilizes Firestore to fetch and convert location data into [LocationModel] instances.
class LocationService extends LocationRepository {
  /// Constructs a [LocationService] with a required [FirebaseFirestore] instance.
  LocationService({required this.firestoreInstance});

  /// Firebase instanc for connect database
  final FirebaseFirestore firestoreInstance;

  @override
  Future<List<LocationModel>> fetchLocations() async {
    final locations = await firestoreInstance
        .collection(DatabaseCollectionEnum.locations.name)
        .get();

    final locationModels =
        locations.docs.map((e) => LocationModel.fromJson(e.data())).toList();

    return locationModels;
  }
}
