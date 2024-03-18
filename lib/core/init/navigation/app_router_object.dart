import 'package:traveling_partner/core/init/navigation/app_router.dart';

/// Singleton class for accessing the [AppRouter] instance.
class AppRouterObject {
  /// Returns the singleton instance of [AppRouterObject].
  factory AppRouterObject() {
    return _appRouterObject;
  }

  /// Private constructor to prevent instantiation.
  AppRouterObject._();

  /// Singleton instance of [AppRouterObject].
  static final AppRouterObject _appRouterObject = AppRouterObject._();

  /// The [AppRouter] instance used for navigation.
  static final AppRouter appRouter = AppRouter();
}
