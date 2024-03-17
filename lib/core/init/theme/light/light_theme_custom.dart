import 'package:flutter/material.dart';
import 'package:traveling_partner/core/constants/enum/font_enum.dart';
import 'package:traveling_partner/core/init/theme/color-scheme/color_scheme_common.dart';
import 'package:traveling_partner/core/init/theme/color-scheme/color_scheme_light.dart';

class LightThemeCustom {
  LightThemeCustom() {
    theme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: ColorSchemeCommon.instance!.japaneseLaurel,
      appBarTheme: const AppBarTheme(
        toolbarHeight: kToolbarHeight * 1.4,
      ),
      textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 21,
          color: ColorSchemeLight.instance!.emperor,
        ),
        titleLarge: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 20,
          color: ColorSchemeLight.instance!.emperor,
        ),
        titleMedium: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 18,
          color: ColorSchemeLight.instance!.emperor,
        ),
        titleSmall: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 16,
          color: ColorSchemeLight.instance!.emperor,
        ),
        bodyLarge: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 14,
          color: ColorSchemeLight.instance!.emperor,
        ),
        bodyMedium: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 13,
          color: ColorSchemeLight.instance!.emperor,
        ),
        bodySmall: TextStyle(
          fontFamily: FontEnum.cabinRegular.value,
          fontSize: 12,
          color: ColorSchemeLight.instance!.emperor,
        ),
      ),
    );
  }

  late ThemeData theme;
}
