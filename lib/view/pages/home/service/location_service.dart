import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';
import 'package:traveling_partner/view/pages/home/service/location_repository.dart';

class LocationService extends LocationRepository {
  LocationService({required this.firestoreInstance});

  final FirebaseFirestore firestoreInstance;

  @override
  Future<List<LocationModel>> fetchLocations() async {
    var locations = await firestoreInstance
        .collection(DatabaseCollectionEnum.locations.name)
        .get();

    var locationModels =
        locations.docs.map((e) => LocationModel.fromJson(e.data())).toList();

    return locationModels;
  }
}
