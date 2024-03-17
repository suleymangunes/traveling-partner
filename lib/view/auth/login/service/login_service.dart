import 'package:firebase_auth/firebase_auth.dart';
import 'package:traveling_partner/view/auth/login/model/login_model.dart';
import 'package:traveling_partner/view/auth/login/service/i_login_repository.dart';

class LoginService extends ILoginRepository {
  final FirebaseAuth authInstance;

  LoginService({required this.authInstance});

  @override
  Future<UserCredential> loginWithEmail(
      {required LoginModel loginModel}) async {
    final String? email = loginModel.email;
    final String? password = loginModel.password;

    if (email != null && password != null) {
      return await authInstance.signInWithEmailAndPassword(
          email: email, password: password);
    } else {
      throw "email or password is null";
    }
  }

  @override
  Future<void> signOutEmail() async {
    return await authInstance.signOut();
  }
}
