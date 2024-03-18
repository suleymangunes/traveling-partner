import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

class PlacesText extends StatelessWidget {
  const PlacesText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.destinationPlaces.tr(),
      style: context.spacingBoldTitleMedium,
    );
  }
}
