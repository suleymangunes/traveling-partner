// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:traveling_partner/core/init/theme/color-scheme/color_scheme_common.dart';

/// **TextExtension Extension**
///
/// Extensions providing convenient methods for accessing text-related properties and styles based on the current context.
///
/// Example Usage:
/// ```dart
/// context.titleLarge // Accessing the large title text style
/// ```
extension TextExtension on BuildContext {
  /// Returns the theme data of the current context.
  ThemeData get themeData => Theme.of(this);

  /// Returns the color scheme of the current theme.
  ColorScheme get colorScheme => themeData.colorScheme;

  /// Returns the text theme of the current theme.
  TextTheme get textTheme => themeData.textTheme;

  /// Returns the common color scheme instance.
  ColorSchemeCommon get colorSchemeCommon => ColorSchemeCommon.instance!;

  /// Returns the large title text style.
  TextStyle get titleLarge => textTheme.titleLarge!;

  /// Returns the medium title text style.
  TextStyle get titleMedium => textTheme.titleMedium!;

  /// Returns the small title text style.
  TextStyle get titleSmall => textTheme.titleSmall!;

  /// Returns the large body text style.
  TextStyle get bodyLarge => textTheme.bodyLarge!;

  /// Returns the large body text style with bold font weight.
  TextStyle get bodyLargeBold => textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.bold,
      );

  /// Returns the small headline text style with increased letter spacing.
  TextStyle get spacingHeadlineSmall => textTheme.headlineSmall!.copyWith(
        letterSpacing: 1,
      );

  /// Returns the small bold headline text style with increased letter spacing.
  TextStyle get spacingHeadlineSmallBold => textTheme.headlineSmall!.copyWith(
        letterSpacing: 1,
        fontWeight: FontWeight.bold,
      );

  /// Returns the large title text style with increased letter spacing and bold font weight.
  TextStyle get spacingBoldTitleLarge => textTheme.titleLarge!.copyWith(
        letterSpacing: 1.25,
        fontWeight: FontWeight.w600,
      );

  /// Returns the medium title text style with increased letter spacing and bold font weight.
  TextStyle get spacingBoldTitleMedium => textTheme.titleMedium!.copyWith(
        letterSpacing: 1.25,
        fontWeight: FontWeight.w600,
      );

  /// Returns the error text style with the color from the current color scheme.
  TextStyle? get errorStyle =>
      textTheme.titleSmall?.copyWith(color: colorScheme.error);

  /// Returns the large title text style with increased letter spacing and background color from the current color scheme.
  TextStyle get titleLargeSpacingBg => textTheme.titleLarge!
      .copyWith(color: colorScheme.background, letterSpacing: 1.5);

  /// Returns the small title text style with increased letter spacing and background color from the current color scheme.
  TextStyle get titleSmallSpacingBg => textTheme.titleSmall!
      .copyWith(color: colorScheme.background, letterSpacing: 1);

  /// Returns the large title text style with primary color from the current color scheme.
  TextStyle get titleMediumSpacing =>
      textTheme.titleMedium!.copyWith(letterSpacing: 1.5);

  /// Returns the large title text style with primary color from the current color scheme.
  TextStyle get titleLargePrimary =>
      textTheme.titleLarge!.copyWith(color: colorScheme.primary);

  /// Returns the large body text style with outlined color from the current color scheme.
  TextStyle get bodyLargeOutlined =>
      textTheme.bodyLarge!.copyWith(color: colorScheme.outline);
}
