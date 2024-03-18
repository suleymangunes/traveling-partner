import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

// ignore: lines_longer_than_80_chars
/// A button widget displayed when an error occurs during destination registration.
class DestinationErrorButton extends StatelessWidget {
  /// Constructs a [DestinationErrorButton] widget.
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
        LocaleKeys.infoJustError.tr(),
        style: context.titleLargeSpacingBg,
      ),
    );
  }
}
