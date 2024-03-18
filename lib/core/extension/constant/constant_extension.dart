import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';

extension ConstantExtension on BuildContext {
  double get buttonHeight => 50;
  double get bigIconSize => 45;
  double get iconSize => 25;
  double get elevation => 5;
  double get animationHeight => 90;
  double get buttonThemeHeight => Theme.of(this).buttonTheme.height;
  double get datePickerHeiht => 450;
  double get datePickerWidth => 400;
}

extension ShadowExtension on BuildContext {
  double get cardShadow => 10;
  double get iconLeftSpace => 10;
  double get iconTopSpace => 30;
}

extension WidgetExtension on BuildContext {
  BorderRadius get cardBorderRadius => BorderRadius.circular(25);
  BorderRadius get iconBgRadius => BorderRadius.circular(5);

  EdgeInsets get cardMargin =>
      const EdgeInsets.symmetric(horizontal: 25, vertical: 15);
  EdgeInsets get cardContentPadding => const EdgeInsets.all(10);

  EdgeInsets get buttonPadding => const EdgeInsets.all(15);
  EdgeInsets get textButtonPadding =>
      const EdgeInsets.symmetric(vertical: 10, horizontal: 20);

  EdgeInsets get iconBgPadding => const EdgeInsets.all(4.0);
}

extension SizeExtensions on BuildContext {
  Size get buttonSized => Size(width, Theme.of(this).buttonTheme.height);
  Size get alertButtonSize => Size(150, buttonHeight);
}
