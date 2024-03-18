// ignore_for_file: lines_longer_than_80_chars

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';
import 'package:traveling_partner/view/auth/register/service/register_service.dart';

/// Class responsible for setting up and providing access to login-related services
class GetItLogin {
  /// Factory constructor to provide access to singleton instance
  factory GetItLogin() {
    return _singleton;
  }

  GetItLogin._internal();

  /// Singleton instance of GetItLogin
  static final GetItLogin _singleton = GetItLogin._internal();

  /// GetIt instance for dependency injection
  static final getIt = GetIt.instance;

  /// Instance of FirebaseAuth
  static final FirebaseAuth authInstance = FirebaseAuth.instance;

  /// Instance of FirebaseFirestore
  static final FirebaseFirestore firestorInstance = FirebaseFirestore.instance;

  /// Method to setup dependencies
  static void setup() {
    getIt
      ..registerSingleton<LoginService>(
        LoginService(authInstance: authInstance),
      )
      ..registerSingleton<RegisterService>(
        RegisterService(
          authInstance: authInstance,
          firestoreInstance: firestorInstance,
        ),
      );
  }
}
