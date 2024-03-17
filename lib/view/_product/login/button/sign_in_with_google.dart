import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traveling_partner/core/constants/svg/svg_enum.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';
import 'package:traveling_partner/view/auth/login/view-model/get_it_login_instance.dart';

class SignInWithGoogle extends StatelessWidget with GetItLoginInstance {
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
        LoginService(authInstance: FirebaseAuth.instance).loginWithGoogle();
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
}
