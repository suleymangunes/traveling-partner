import 'package:firebase_auth/firebase_auth.dart';
import 'package:traveling_partner/view/auth/login/model/login_model.dart';

abstract class ILoginRepository {
  Future<UserCredential> loginWithEmail({required LoginModel loginModel});
  Future<void> signOutEmail();
}
