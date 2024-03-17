import 'package:traveling_partner/product/dependency-injection/getit_firestore.dart';
import 'package:traveling_partner/view/pages/home/service/location_repository.dart';
import 'package:traveling_partner/view/pages/home/service/location_service.dart';

mixin GetItLocationInstance {
  LocationRepository locationService() {
    return GetItFirestore.getIt<LocationService>();
  }
}
