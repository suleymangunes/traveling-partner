import 'package:firebase_auth/firebase_auth.dart';
import 'package:traveling_partner/view/auth/register/model/register_model.dart';

/// An abstract class defining methods for user registration.
// ignore: one_member_abstracts
abstract class IRegisterRepository {
  /// Registers a new user with the provided registration model.
  Future<UserCredential> register({required RegisterModel registerModel});
}
