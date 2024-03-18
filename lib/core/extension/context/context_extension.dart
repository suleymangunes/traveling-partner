// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';

/// **ContextExtension Extension**
///
/// Extensions providing convenient methods for accessing context-related constants and properties.
///
/// Example Usage:
/// ```dart
/// context.width // Accessing the width of the current context
/// ```
extension ContextExtension on BuildContext {
  /// Returns the width of the current context.
  double get width => MediaQuery.sizeOf(this).width;

  /// Returns the height of the current context.
  double get height => MediaQuery.sizeOf(this).height;

  /// Returns the device size (width and height) of the current context.
  Size get deviceSizes => MediaQuery.sizeOf(this);

  /// Returns the size of a small button based on the width of the current context.
  Size get smallButtonSize => Size(width * 0.7, buttonHeight);

  /// Returns the paddings of the device screen of the current context.
  EdgeInsets get devicePaddings => MediaQuery.paddingOf(this);
}

/// **SizeExtensions Extension**
///
/// Extensions providing convenient methods for calculating sizes based on the current context.
///
/// Example Usage:
/// ```dart
/// context.cardHeight // Calculating the height of a card based on the width of the current context
/// ```
extension SizeExtensions on BuildContext {
  /// Calculates the height of a card based on the width of the current context.
  double get cardHeight => width * 0.85;

  /// Calculates the image height in a card based on the width of the current context.
  double get imageHeightInCard => width * 0.5;

  /// Calculates the height of a big SVG image based on the height of the current context.
  double get svgBigHeight => height * 0.15;

  /// Calculates the height of a stack based on the height of the current context.
  double get stackHeight => height * 0.5;
}

/// **SizedboxExtensionHeight Extension**
///
/// Extensions providing convenient methods for creating SizedBox widgets with specific heights based on the current context.
///
/// Example Usage:
/// ```dart
/// context.tinySizedBox // Creating a SizedBox with a tiny height based on the height of the current context
/// ```
extension SizedboxExtensionHeight on BuildContext {
  /// Creates a SizedBox with a small height based on the height of the current context.
  SizedBox get smallSizedBox => SizedBox(height: height * 0.01);

  /// Creates a SizedBox with a tiny height based on the height of the current context.
  SizedBox get tinySizedBox => SizedBox(height: height * 0.01);

  /// Creates a SizedBox with a tiny height based on the height of the current context.
  SizedBox get tinySSizedBox => SizedBox(height: height * 0.008);

  /// Creates a SizedBox with a big height based on the height of the current context.
  SizedBox get bigSizedBox => SizedBox(height: height * 0.1);

  /// Creates a SizedBox with a normal height based on the height of the current context.
  SizedBox get normalSizedBox => SizedBox(height: height * 0.015);

  /// Creates a SizedBox with a big extra height based on the height of the current context.
  SizedBox get bigXSizedBox => SizedBox(height: height * 0.02);

  /// Creates a SizedBox with  list tile width based on the width of the current context.
  SizedBox get listTileSizedBox => SizedBox(width: width * 0.04);
}

/// **PaddingExtension Extension**
///
/// Extensions providing convenient methods for creating EdgeInsets based on the width of the current context.
///
/// Example Usage:
/// ```dart
/// context.widgetPadding // Creating EdgeInsets for widget padding based on the width of the current context
/// ```
extension PaddingExtension on BuildContext {
  /// Creates EdgeInsets for normal widget padding based on the width of the current context.
  EdgeInsets get normalWidgetPadding => EdgeInsets.all(width * 0.02);

  /// Creates EdgeInsets for widget padding based on the width of the current context.
  EdgeInsets get widgetPadding => EdgeInsets.all(width * 0.05);

  /// Creates EdgeInsets for content padding based on the width of the current context.
  EdgeInsets get contentPadding =>
      EdgeInsets.symmetric(horizontal: width * 0.05, vertical: width * 0.035);
}
