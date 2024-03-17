import 'package:flutter/material.dart';
import 'package:traveling_partner/core/init/theme/color-scheme/color_scheme_common.dart';

extension TextExtension on BuildContext {
  ThemeData get themeData => Theme.of(this);

  ColorScheme get colorScheme => themeData.colorScheme;

  TextTheme get textTheme => themeData.textTheme;

  ColorSchemeCommon get colorSchemeCommon => ColorSchemeCommon.instance!;

  TextStyle get titleLarge => textTheme.titleLarge!;
}
