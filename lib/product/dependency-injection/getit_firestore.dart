import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:traveling_partner/view/pages/destination/service/travel_date_service.dart';
import 'package:traveling_partner/view/pages/home/service/location_service.dart';

/// Class responsible for setting up and providing access to Firestore instances
class GetItFirestore {
  /// Factory constructor to provide access to singleton instance
  factory GetItFirestore() {
    return _singleton;
  }

  GetItFirestore._internal();

  /// Singleton instance of GetItFirestore
  static final GetItFirestore _singleton = GetItFirestore._internal();

  /// GetIt instance for dependency injection
  static final getIt = GetIt.instance;

  /// Instance of FirebaseFirestore
  static final FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  /// Method to setup dependencies
  static void setup() {
    getIt
      ..registerSingleton<LocationService>(
        LocationService(firestoreInstance: firestoreInstance),
      )
      ..registerSingleton<TravelDateService>(
        TravelDateService(firestoreInstance: firestoreInstance),
      );
  }
}
