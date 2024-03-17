import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';

class GetItLogin {
  factory GetItLogin() {
    return _singleton;
  }

  GetItLogin._internal();

  static final GetItLogin _singleton = GetItLogin._internal();

  static final getIt = GetIt.instance;

  static final FirebaseAuth authInstance = FirebaseAuth.instance;

  static void setup() {
    getIt.registerSingleton<LoginService>(
        LoginService(authInstance: authInstance));
  }
}
