import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// A widget displaying a text indicating "Places".
class PlacesText extends StatelessWidget {
  /// Constructs a [PlacesText] widget.
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
