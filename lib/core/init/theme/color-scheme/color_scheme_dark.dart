import 'package:flutter/material.dart';

/// Color scheme for dark mode used across the application.
class ColorSchemeDark {
  /// Private constructor to prevent instantiation from outside.
  ColorSchemeDark._init();

  /// Singleton instance of [ColorSchemeDark].
  static ColorSchemeDark? _instance;

  /// Getter for the singleton instance of [ColorSchemeDark].
  static ColorSchemeDark? get instance => _instance ??= ColorSchemeDark._init();

  /// Color representing 'Alto' in dark mode.
  final Color alto = const Color(0xFFE0E0E0);
}
