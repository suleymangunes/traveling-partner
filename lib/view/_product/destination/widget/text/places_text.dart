import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class PlacesText extends StatelessWidget {
  const PlacesText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.places,
      style: context.spacingBoldTitleMedium,
    );
  }
}
