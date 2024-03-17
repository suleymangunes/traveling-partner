import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';

class HaventAccount extends StatelessWidget {
  const HaventAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        AppRouterObject.appRouter.push(const RegisterRoute());
      },
      child: RichText(
          text: TextSpan(
        children: [
          TextSpan(
            style: context.bodyLarge,
            text: LocaleKeys.dontAccount,
          ),
          TextSpan(
            style: context.bodyLargeBold,
            text: LocaleKeys.registerNow,
          ),
        ],
      )),
    );
  }
}
