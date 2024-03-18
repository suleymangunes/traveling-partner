import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

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
            text: LocaleKeys.infoDontAccount.tr(),
          ),
          TextSpan(
            style: context.bodyLargeBold,
            text: LocaleKeys.buttonRegisterNow.tr(),
          ),
        ],
      )),
    );
  }
}
