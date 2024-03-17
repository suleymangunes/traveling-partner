import 'package:flutter/material.dart';

class ColorSchemeDark {
  ColorSchemeDark._init();

  static ColorSchemeDark? _instance;

  static ColorSchemeDark? get instance => _instance ??= ColorSchemeDark._init();

  final Color alto = const Color(0xFFE0E0E0);
}
