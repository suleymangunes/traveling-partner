import 'package:flutter/material.dart';

/// Common color scheme used across the application.
class ColorSchemeCommon {
  /// Private constructor to prevent instantiation from outside.
  ColorSchemeCommon._init();

  /// Singleton instance of [ColorSchemeCommon].
  static ColorSchemeCommon? _instance;

  /// Getter for the singleton instance of [ColorSchemeCommon].
  static ColorSchemeCommon? get instance =>
      _instance ??= ColorSchemeCommon._init();

  /// Color representing Japanese Laurel.
  final Color japaneseLaurel = const Color(0xFF009000);
}
