import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

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
        LocaleKeys.buttonRegistered,
        style: context.titleLargeSpacingBg,
      ),
    );
  }
}
