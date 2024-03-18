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
      LocaleKeys.destinationPickTravelDate,
      textAlign: TextAlign.center,
      style: context.spacingHeadlineSmall,
    );
  }
}
