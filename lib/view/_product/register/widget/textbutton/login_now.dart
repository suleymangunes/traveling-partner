import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';

class LoginNow extends StatelessWidget {
  const LoginNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        AppRouterObject.appRouter.maybePop();
      },
      child: RichText(
          text: TextSpan(
        children: [
          TextSpan(
            style: context.bodyLarge,
            text: LocaleKeys.haveAccount,
          ),
          TextSpan(
            style: context.bodyLargeBold,
            text: LocaleKeys.loginNow,
          ),
        ],
      )),
    );
  }
}
