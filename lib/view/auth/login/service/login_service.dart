import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:traveling_partner/core/components/exception/custom_exception.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
import 'package:traveling_partner/view/auth/login/model/login_model.dart';
import 'package:traveling_partner/view/auth/login/service/i_login_repository.dart';

/// A service class responsible for handling login-related operations.
class LoginService extends ILoginRepository {
  /// Constructs a [LoginService] with the provided [authInstance].
  LoginService({required this.authInstance});

  /// The instance of [FirebaseAuth] used for authentication.
  final FirebaseAuth authInstance;

  @override
  Future<UserCredential> loginWithEmail({
    required LoginModel loginModel,
  }) async {
    final email = loginModel.email;
    final password = loginModel.password;

    if (email != null && password != null) {
      return authInstance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } else {
      throw CustomException();
    }
  }

  @override
  Future<void> signOutEmail() async {
    return authInstance.signOut();
  }

  /// Signs in a user using Google authentication.
  ///
  /// Returns a [User] if the sign-in operation is successful.
  /// Throws a [CustomException] if an error occurs during the sign-in process.
  Future<User?>? loginWithGoogle() async {
    try {
      final gUser = await GoogleSignIn().signIn();

      final gAuth = await gUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );

      final userCredential =
          await authInstance.signInWithCredential(credential);
      log(userCredential.user!.email.toString());
      log(userCredential.user!.displayName.toString());
      await FirebaseFirestore.instance
          .collection(DatabaseCollectionEnum.users.name)
          .doc(userCredential.user!.uid)
          .set({
        'email': userCredential.user!.email,
        'name': userCredential.user!.displayName,
      });
      await AppRouterObject.appRouter
          .pushAndPopUntil(const HomeRoute(), predicate: (route) => false);
    } catch (e) {
      return throw CustomException();
    }
    return null;
  }

  /// Signs out the current user authenticated with Google.
  ///
  /// Returns a [GoogleSignInAccount] if the sign-out operation is successful.
  Future<GoogleSignInAccount?>? signOutGoogle() async {
    return GoogleSignIn().signOut();
  }

  /// Checks if a user is signed in.
  ///
  /// Returns `true` if the user is signed in, `false` otherwise.
  bool isSignIn() {
    final isSigned = authInstance.currentUser == null;
    return isSigned;
  }
}
