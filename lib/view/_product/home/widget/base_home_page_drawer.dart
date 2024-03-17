import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';

class BaseHomePageDrawer extends StatelessWidget {
  const BaseHomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
          child: Column(
        children: [
          Lottie.asset(AnimationEnum.walk.path),
          context.smallSizedBox,
          Text(
            FirebaseAuth.instance.currentUser!.displayName.toString(),
            style: context.titleLarge,
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(padding: context.textButtonPadding),
            onPressed: () async {
              final loginService =
                  LoginService(authInstance: FirebaseAuth.instance);
              await loginService.signOutEmail();
              await loginService.signOutGoogle();
              AppRouterObject.appRouter.pushAndPopUntil(const LoginRoute(),
                  predicate: (route) => false);
            },
            child: Text(
              LocaleKeys.signOut,
              style: context.titleLargePrimary,
            ),
          ),
          context.normalSizedBox,
        ],
      )),
    );
  }
}
