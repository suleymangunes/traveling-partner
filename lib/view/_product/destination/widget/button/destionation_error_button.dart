import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class DestinationErrorButton extends StatelessWidget {
  const DestinationErrorButton({
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
      onPressed: () {},
      child: Text(
        LocaleKeys.justError,
        style: context.titleLargeSpacingBg,
      ),
    );
  }
}
