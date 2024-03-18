// ignore_for_file: lines_longer_than_80_chars

import 'package:traveling_partner/product/dependency-injection/getit_login.dart';
import 'package:traveling_partner/view/auth/login/service/i_login_repository.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';

/// A mixin to provide an instance of the login service using GetIt dependency injection.
mixin GetItLoginInstance {
  /// Retrieves an instance of the login service.
  ILoginRepository loginService() {
    return GetItLogin.getIt<LoginService>();
  }
}
