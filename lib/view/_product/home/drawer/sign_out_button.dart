import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';

/// A button widget for signing out the current user.
class SignOutButton extends StatelessWidget {
  /// Constructs a [SignOutButton] widget.
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(padding: context.textButtonPadding),
      onPressed: () async {
        final loginService = LoginService(authInstance: FirebaseAuth.instance);
        await loginService.signOutEmail();
        await loginService.signOutGoogle();
        await AppRouterObject.appRouter
            .pushAndPopUntil(const LoginRoute(), predicate: (route) => false);
      },
      child: Text(
        LocaleKeys.buttondSignOut.tr(),
        style: context.titleLargePrimary,
      ),
    );
  }
}
