import 'package:traveling_partner/product/dependency-injection/getit_firestore.dart';
import 'package:traveling_partner/view/pages/destination/service/i_travel_date_service.dart';
import 'package:traveling_partner/view/pages/destination/service/travel_date_service.dart';

/// A mixin to provide an instance of the travel date service.
mixin GetItTravelDateInstance {
  /// Gets an instance of the travel date service.
  ITravelDateService travelDateService() {
    return GetItFirestore.getIt<TravelDateService>();
  }
}
