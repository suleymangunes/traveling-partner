import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';

extension ContextExtension on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  Size get deviceSizes => MediaQuery.sizeOf(this);

  Size get smallButtonSize => Size(width * 0.7, buttonHeight);

  EdgeInsets get devicePaddings => MediaQuery.paddingOf(this);
}

extension SizeExtensions on BuildContext {
  double get cardHeight => width * 0.85;
  double get imageHeightInCard => width * 0.5;
  double get svgBigHeight => height * 0.15;
  double get stackHeight => height * 0.5;
}

extension SizedboxExtensionHeight on BuildContext {
  SizedBox get smallSizedBox => SizedBox(height: height * 0.01);
  SizedBox get tinySizedBox => SizedBox(height: height * 0.01);
  SizedBox get tinySSizedBox => SizedBox(height: height * 0.008);
  SizedBox get bigSizedBox => SizedBox(height: height * 0.1);
  SizedBox get normalSizedBox => SizedBox(height: height * 0.015);
  SizedBox get bigXSizedBox => SizedBox(height: height * 0.02);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get normalWidgetPadding => EdgeInsets.all(width * 0.02);
  EdgeInsets get widgetPadding => EdgeInsets.all(width * 0.05);
  EdgeInsets get contentPadding =>
      EdgeInsets.symmetric(horizontal: width * 0.05, vertical: width * 0.035);
}
