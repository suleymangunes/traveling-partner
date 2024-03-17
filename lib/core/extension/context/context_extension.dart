import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  Size get deviceSizes => MediaQuery.sizeOf(this);

  EdgeInsets get devicePaddings => MediaQuery.paddingOf(this);
}

extension SizeExtensions on BuildContext {
  double get cardHeight => width * 0.85;
  double get imageHeightInCard => width * 0.5;
}

extension SizedboxExtensionHeight on BuildContext {
  SizedBox get smallSizedBox => SizedBox(height: height * 0.01);
  SizedBox get tinySizedBox => SizedBox(height: height * 0.01);
  SizedBox get tinySSizedBox => SizedBox(height: height * 0.008);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get normalWidgetPadding => EdgeInsets.all(width * 0.02);
}
