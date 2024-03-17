import 'package:flutter/material.dart';
import 'package:traveling_partner/core/init/theme/color-scheme/color_scheme_common.dart';

extension TextExtension on BuildContext {
  ThemeData get themeData => Theme.of(this);

  ColorScheme get colorScheme => themeData.colorScheme;

  TextTheme get textTheme => themeData.textTheme;

  ColorSchemeCommon get colorSchemeCommon => ColorSchemeCommon.instance!;

  TextStyle get titleLarge => textTheme.titleLarge!;

  TextStyle get titleMedium => textTheme.titleMedium!;

  TextStyle get titleSmall => textTheme.titleSmall!;

  TextStyle get bodyLarge => textTheme.bodyLarge!;

  TextStyle get bodyLargeBold => textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.bold,
      );

  TextStyle get spacingHeadlineSmall => textTheme.headlineSmall!.copyWith(
        letterSpacing: 1,
      );

  TextStyle get spacingBoldTitleLarge => textTheme.titleLarge!.copyWith(
        letterSpacing: 1.25,
        fontWeight: FontWeight.w600,
      );
  TextStyle? get errorStyle =>
      textTheme.titleSmall?.copyWith(color: colorScheme.error);

  TextStyle get titleLargeSpacingBg => textTheme.titleLarge!
      .copyWith(color: colorScheme.background, letterSpacing: 1.5);

  TextStyle get titleMediumSpacing =>
      textTheme.titleMedium!.copyWith(letterSpacing: 1.5);
}
