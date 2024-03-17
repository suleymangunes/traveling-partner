import 'package:traveling_partner/product/dependency-injection/getit_login.dart';
import 'package:traveling_partner/view/auth/register/service/i_register_repository.dart';
import 'package:traveling_partner/view/auth/register/service/register_service.dart';

mixin GetItRegisterInstance {
  IRegisterRepository registerService() {
    return GetItLogin.getIt<RegisterService>();
  }
}
