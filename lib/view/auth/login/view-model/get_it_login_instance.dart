import 'package:traveling_partner/product/dependency-injection/getit_login.dart';
import 'package:traveling_partner/view/auth/login/service/i_login_repository.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';

mixin GetItLoginInstance {
  ILoginRepository loginService() {
    return GetItLogin.getIt<LoginService>();
  }
}
