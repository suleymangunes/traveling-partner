import 'dart:ui';

/// Color scheme for light mode used across the application.
class ColorSchemeLight {
  /// Private constructor to prevent instantiation from outside.
  ColorSchemeLight._init();

  /// Sigleton instance of [ColorSchemeLight].
  static ColorSchemeLight? _instance;

  /// Getter for the singleton instance of [ColorSchemeLight].
  static ColorSchemeLight? get instance =>
      _instance ??= ColorSchemeLight._init();

  /// Color representing 'Emperor' in light mode.
  final Color emperor = const Color(0xFF1D1D1D);
}
