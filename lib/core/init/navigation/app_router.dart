import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';

/// The application router configuration.
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: LoginService(authInstance: FirebaseAuth.instance).isSignIn(),
        ),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          initial:
              !LoginService(authInstance: FirebaseAuth.instance).isSignIn(),
        ),
        AutoRoute(page: DestinationRoute.page),
        AutoRoute(page: AttendeesRoute.page),
      ];
}
