import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.about,
      style: context.spacingBoldTitleMedium,
    );
  }
}
