// ignore_for_file: one_member_abstracts

import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// Interface for a repository to fetch location data.
abstract class LocationRepository {
  /// Asynchronously retrieves a list of [LocationModel].
  Future<List<LocationModel>> fetchLocations();
}
