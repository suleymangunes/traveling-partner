import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';

class DestinationCompletedButton extends StatelessWidget {
  const DestinationCompletedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
        padding: context.buttonPadding,
        minimumSize: context.alertButtonSize,
      ),
      onPressed: () {
        AppRouterObject.appRouter.maybePop();
      },
      child: Text(
        LocaleKeys.registered,
        style: context.titleLargeSpacingBg,
      ),
    );
  }
}
