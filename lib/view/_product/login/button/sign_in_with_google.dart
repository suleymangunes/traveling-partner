import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traveling_partner/core/constants/svg/svg_enum.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';
import 'package:traveling_partner/view/auth/login/view-model/get_it_login_instance.dart';

/// A class containing a button for signing in with a Google account.
///
/// This class provides a button for users to sign in with their Google account.
/// The button displays the Google logo and the text "Sign in with Google".
/// When clicked, the user is prompted to sign in with their Google account,
/// using the [LoginService] class to handle the authentication process.
class SignInWithGoogle extends StatelessWidget with GetItLoginInstance {
  /// Creates a button for signing in with Google.
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
        await LoginService(authInstance: FirebaseAuth.instance)
            .loginWithGoogle();
      },
      child: Row(
        children: [
          SvgPicture.asset(
            SvgEnum.gooogle.path,
            height: context.buttonThemeHeight,
          ),
          const Spacer(),
          Text(
            LocaleKeys.buttondSiginGoogle.tr(),
            style: context.titleMediumSpacing,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
