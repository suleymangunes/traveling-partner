import 'dart:ui';

class ColorSchemeLight {
  ColorSchemeLight._init();

  static ColorSchemeLight? _instance;

  static ColorSchemeLight? get instance =>
      _instance ??= ColorSchemeLight._init();

  final Color emperor = const Color(0xFF1D1D1D);
}
