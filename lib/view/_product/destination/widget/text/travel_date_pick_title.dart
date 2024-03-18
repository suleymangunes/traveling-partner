import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class TravelDatePickTitle extends StatelessWidget {
  const TravelDatePickTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.pickTravelDate,
      textAlign: TextAlign.center,
      style: context.spacingHeadlineSmall,
    );
  }
}
