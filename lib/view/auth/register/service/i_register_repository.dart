import 'package:firebase_auth/firebase_auth.dart';
import 'package:traveling_partner/view/auth/register/model/register_model.dart';

abstract class IRegisterRepository {
  Future<UserCredential> register({required RegisterModel registerModel});
}
