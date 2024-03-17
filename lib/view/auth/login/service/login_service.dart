import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
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

  Future<User?>? loginWithGoogle() async {
    try {
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication gAuth = await gUser!.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken, idToken: gAuth.idToken);

      final UserCredential userCredential =
          await authInstance.signInWithCredential(credential);
      log(userCredential.user!.email.toString());
      log(userCredential.user!.displayName.toString());
      FirebaseFirestore.instance
          .collection(DatabaseCollectionEnum.users.name)
          .doc(userCredential.user!.uid)
          .set({
        "email": userCredential.user!.email,
        "name": userCredential.user!.displayName,
      });
      AppRouterObject.appRouter
          .pushAndPopUntil(const HomeRoute(), predicate: (route) => false);
    } catch (e) {
      return throw "google ile giris yaparken sorun olustu";
    }
    return null;
  }

  Future<GoogleSignInAccount?>? signOutGoogle() async {
    return await GoogleSignIn().signOut();
  }

  bool isSignIn() {
    final isSigned = authInstance.currentUser == null;
    return isSigned;
  }
}
