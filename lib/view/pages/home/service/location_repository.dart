import 'package:traveling_partner/view/pages/home/model/location_model.dart';

abstract class LocationRepository {
  Future<List<LocationModel>> fetchLocations();
}
