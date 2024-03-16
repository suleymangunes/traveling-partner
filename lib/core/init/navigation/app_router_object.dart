import 'package:traveling_partner/core/init/navigation/app_router.dart';

class AppRouterObject {
  factory AppRouterObject() {
    return _appRouterObject;
  }

  AppRouterObject._();

  static final AppRouterObject _appRouterObject = AppRouterObject._();

  static final AppRouter appRouter = AppRouter();
}
