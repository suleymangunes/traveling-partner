import 'package:flutter/material.dart';
import 'package:traveling_partner/core/constants/enum/font_enum.dart';
import 'package:traveling_partner/core/init/theme/color-scheme/color_scheme_common.dart';
import 'package:traveling_partner/core/init/theme/color-scheme/color_scheme_dark.dart';

class DarkThemeCustom {
  DarkThemeCustom() {
    theme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: ColorSchemeCommon.instance!.japaneseLaurel,
      appBarTheme: const AppBarTheme(
        toolbarHeight: kToolbarHeight * 1.4,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 21,
          color: ColorSchemeDark.instance!.alto,
        ),
        titleLarge: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 20,
          color: ColorSchemeDark.instance!.alto,
        ),
        titleMedium: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 18,
          color: ColorSchemeDark.instance!.alto,
        ),
        titleSmall: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 16,
          color: ColorSchemeDark.instance!.alto,
        ),
        bodyLarge: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 14,
          color: ColorSchemeDark.instance!.alto,
        ),
        bodyMedium: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 13,
          color: ColorSchemeDark.instance!.alto,
        ),
        bodySmall: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 12,
          color: ColorSchemeDark.instance!.alto,
        ),
      ),
    );
  }

  /// The ThemeData instance representing the dark theme.
  late ThemeData theme;
}
