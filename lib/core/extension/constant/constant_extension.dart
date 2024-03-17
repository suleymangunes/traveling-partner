import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';

extension ConstantExtension on BuildContext {
  double get buttonHeight => 50;
  double get iconSize => 25;
  double get elevation => 5;
  double get buttonThemeHeight => Theme.of(this).buttonTheme.height;
}

extension ShadowExtension on BuildContext {
  double get cardShadow => 10;
}

extension WidgetExtension on BuildContext {
  BorderRadius get cardBorderRadius => BorderRadius.circular(25);
  EdgeInsets get cardMargin =>
      const EdgeInsets.symmetric(horizontal: 25, vertical: 15);
  EdgeInsets get cardContentPadding => const EdgeInsets.all(10);

  EdgeInsets get buttonPadding => const EdgeInsets.all(15);
}

extension SizeExtensions on BuildContext {
  Size get buttonSized => Size(width, Theme.of(this).buttonTheme.height);
}
