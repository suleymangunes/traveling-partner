import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:traveling_partner/core/constants/enum/theme_caching_enum.dart';

class ThemeCaching {
  const ThemeCaching._();
  static final Box _theme = Hive.box(ThemeCachingnEnum.theme.name);

  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(ThemeCachingnEnum.theme.name);
  }

  static String initialRadio() {
    switch (_theme.get(ThemeCachingnEnum.isLight.name)) {
      case true:
        return 'ThemeMode.light';
      case false:
        return 'ThemeMode.dark';
      default:
        return 'ThemeMode.system';
    }
  }

  static ThemeMode initialTheme() {
    switch (_theme.get(ThemeCachingnEnum.isLight.name)) {
      case true:
        return ThemeMode.light;
      case false:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  static void makelight() {
    _theme.put(ThemeCachingnEnum.isLight.name, true);
  }

  static void makeDark() {
    _theme.put(ThemeCachingnEnum.isLight.name, false);
  }

  static void makeSystem() {
    _theme.put(ThemeCachingnEnum.isLight.name, null);
  }
}
