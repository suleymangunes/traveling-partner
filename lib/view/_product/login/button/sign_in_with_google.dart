import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:traveling_partner/core/constants/svg/svg_enum.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: context.elevation,
        padding: context.buttonPadding,
        minimumSize: context.buttonSized,
      ),
      onPressed: () async {
        await GoogleSignIn().signOut();
        signInWithGoogle();
      },
      child: Row(
        children: [
          SvgPicture.asset(
            SvgEnum.gooogle.path,
            height: context.buttonThemeHeight,
          ),
          const Spacer(),
          Text(
            LocaleKeys.siginGoogle,
            style: context.titleMediumSpacing,
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Future<User?> signInWithGoogle() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    final UserCredential userCredential =
        await firebaseAuth.signInWithCredential(credential);
    log(userCredential.user!.email.toString());
    log(userCredential.user!.displayName.toString());
    FirebaseFirestore.instance.collection("Users").doc("email3").set({
      "email": "email3",
      "name": "isim vs3",
    });
    return userCredential.user;
  }
}
