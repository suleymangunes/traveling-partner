import 'package:traveling_partner/product/dependency-injection/getit_firestore.dart';
import 'package:traveling_partner/view/pages/home/service/location_repository.dart';
import 'package:traveling_partner/view/pages/home/service/location_service.dart';

/// A mixin that provides access to the [LocationService] instance.
///
/// This mixin defines a method [locationService] that retrieves the
/// [LocationService] instance from the GetIt dependency injection container.
/// It's intended to be used by widgets or classes that need to interact with
/// the location service for fetching location data.
mixin GetItLocationInstance {
  /// Retrieves the [LocationService] instance from GetIt.
  ///
  /// Returns an instance of [LocationRepository] which is actually the
  /// [LocationService] configured in the GetIt container. This allows
  /// for dependency injection and easier testing/mocking of services.
  LocationRepository locationService() {
    return GetItFirestore.getIt<LocationService>();
  }
}
