import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:traveling_partner/view/pages/home/service/location_service.dart';

class GetItFirestore {
  factory GetItFirestore() {
    return _singleton;
  }

  GetItFirestore._internal();

  static final GetItFirestore _singleton = GetItFirestore._internal();

  static final getIt = GetIt.instance;

  static final FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  static void setup() {
    getIt.registerSingleton<LocationService>(
        LocationService(firestoreInstance: firestoreInstance));
  }
}
