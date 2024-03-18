import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

class TravelDatePickTitle extends StatelessWidget {
  const TravelDatePickTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.destinationPickTravelDate.tr(),
      textAlign: TextAlign.center,
      style: context.spacingHeadlineSmall,
    );
  }
}
