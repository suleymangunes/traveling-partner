// ignore_for_file: lines_longer_than_80_chars

import 'package:firebase_auth/firebase_auth.dart';
import 'package:traveling_partner/view/auth/login/model/login_model.dart';

/// An abstract class representing a repository for login operations.
abstract class ILoginRepository {
  /// Signs in a user using email and password.
  ///
  /// Throws a [FirebaseAuthException] if an error occurs during the login process.
  Future<UserCredential> loginWithEmail({required LoginModel loginModel});

  /// Signs out the currently authenticated user.
  ///
  /// Throws a [FirebaseAuthException] if an error occurs during the sign-out process.
  Future<void> signOutEmail();
}
