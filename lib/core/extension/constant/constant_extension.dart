import 'package:flutter/material.dart';

extension ConstantExtension on BuildContext {
  double get buttonHeight => 50;
}

extension ShadowExtension on BuildContext {
  double get cardShadow => 10;
}

extension WidgetExtension on BuildContext {
  BorderRadius get cardBorderRadius => BorderRadius.circular(25);
  EdgeInsets get cardMargin =>
      const EdgeInsets.symmetric(horizontal: 25, vertical: 15);
  EdgeInsets get cardContentPadding => const EdgeInsets.all(10);
}
