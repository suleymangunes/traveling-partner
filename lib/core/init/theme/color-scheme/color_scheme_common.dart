import 'package:flutter/material.dart';

class ColorSchemeCommon {
  ColorSchemeCommon._init();

  static ColorSchemeCommon? _instance;

  static ColorSchemeCommon? get instance =>
      _instance ??= ColorSchemeCommon._init();

  final Color japaneseLaurel = const Color(0xFF009000);
}
