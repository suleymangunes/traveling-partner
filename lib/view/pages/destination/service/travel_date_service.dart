import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
import 'package:traveling_partner/view/pages/destination/service/i_travel_date_service.dart';

class TravelDateService extends ITravelDateService {
  final FirebaseFirestore firestoreInstance;

  TravelDateService({required this.firestoreInstance});

  @override
  Future<void> setTravelDate({
    required String? id,
    required Map<String, dynamic> addedMap,
  }) async {
    await FirebaseFirestore.instance
        .collection(DatabaseCollectionEnum.locations.name)
        .doc(id)
        .update(addedMap);
  }
}
