import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:traveling_partner/core/constants/enum/theme_caching_enum.dart';

/// **ThemeCaching Class**
///
/// A utility class for managing theme caching using Hive.
///
/// Example Usage:
/// ```dart
/// await ThemeCaching.init(); // Initializing theme caching
/// ThemeCaching.makelight(); // Setting the theme to light mode
/// ```
class ThemeCaching {
  const ThemeCaching._();

  /// Hive box for theme caching.
  static final Box<dynamic> _theme = Hive.box(ThemeCachingnEnum.theme.name);

  /// Initializes theme caching.
  ///
  /// Must be called before accessing any other methods.
  static Future<void> init() async {
    await Hive.initFlutter();
    // ignore: inference_failure_on_function_invocation
    await Hive.openBox(ThemeCachingnEnum.theme.name);
  }

  /// Retrieves the initial theme mode.
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

  /// Retrieves the initial theme mode as ThemeMode enum.
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

  /// Sets the theme mode to light.
  static void makelight() {
    _theme.put(ThemeCachingnEnum.isLight.name, true);
  }

  /// Sets the theme mode to dark.
  static void makeDark() {
    _theme.put(ThemeCachingnEnum.isLight.name, false);
  }

  /// Sets the theme mode to system.
  static void makeSystem() {
    _theme.put(ThemeCachingnEnum.isLight.name, null);
  }
}
