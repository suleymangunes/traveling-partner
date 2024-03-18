import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// **OrWidget Widget**
///
/// A widget representing a horizontal divider with text "Or" in the middle.
///
/// Requires the following dependencies:
/// - easy_localization:
///
/// Example Usage:
/// ```dart
/// OrWidget()
/// ```

class OrWidget extends StatelessWidget {
  /// Constructor for OrWidget.
  ///
  /// [key] is an optional parameter for widget identification.
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Adding a horizontal divider
        const Expanded(child: Divider()),
        Padding(
          padding: context.buttonPadding,
          child: Text(
            // Displaying "Or" text localized
            LocaleKeys.infoOr.tr(),
            style: context.bodyLarge,
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
