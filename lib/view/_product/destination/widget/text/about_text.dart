import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// A widget displaying the "About" text for a destination.
class AboutText extends StatelessWidget {
  /// Constructs an [AboutText] widget.
  const AboutText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.destinationAbout.tr(),
      style: context.spacingBoldTitleMedium,
    );
  }
}
