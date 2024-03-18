import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// A button widget displayed when destination registration is completed.
class DestinationCompletedButton extends StatelessWidget {
  /// Constructs a [DestinationCompletedButton] widget.
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
      onPressed: AppRouterObject.appRouter.maybePop,
      child: Text(
        LocaleKeys.buttonRegistered.tr(),
        style: context.titleLargeSpacingBg,
      ),
    );
  }
}
