import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';

/// **ConstantExtension Extension**
///
/// Extension providing constant values for widget dimensions.
///
/// Example Usage:
/// ```dart
/// context.buttonHeight // Accessing the button height constant
/// ```
extension ConstantExtension on BuildContext {
  /// Specifies the height of buttons.
  double get buttonHeight => 50;

  /// Specifies the size of big icons.
  double get bigIconSize => 45;

  /// Specifies the size of icons.
  double get iconSize => 25;

  /// Specifies the size of medium icons.
  double get mediumIconSize => 30;

  /// Specifies the elevation for widgets.
  double get elevation => 5;

  /// Specifies the height of animation widgets.
  double get animationHeight => 90;

  /// Specifies the height of buttons according to the current theme.
  double get buttonThemeHeight => Theme.of(this).buttonTheme.height;

  /// Specifies the height of date picker widgets.
  double get datePickerHeiht => 450;

  /// Specifies the width of date picker widgets.
  double get datePickerWidth => 400;

  /// Specifies the size of big images in list tiles.
  double get listTileBigImageSize => 40;
}

/// **ShadowExtension Extension**
///
/// Extension providing constant values for widget shadows.
///
/// Example Usage:
/// ```dart
/// context.cardShadow // Accessing the card shadow constant
/// ```
extension ShadowExtension on BuildContext {
  /// Specifies the shadow value for card widgets.
  double get cardShadow => 10;

  /// Specifies the left space for icons.
  double get iconLeftSpace => 11;

  /// Specifies the top space for icons.
  double get iconTopSpace => 47;
}

/// **WidgetExtension Extension**
///
/// Extension providing constant values for widget dimensions and paddings.
///
/// Example Usage:
/// ```dart
/// context.cardBorderRadius // Accessing the card border radius constant
/// ```
extension WidgetExtension on BuildContext {
  /// Specifies the border radius for card widgets.
  BorderRadius get cardBorderRadius => BorderRadius.circular(25);

  /// Specifies the border radius for icon backgrounds.
  BorderRadius get iconBgRadius => BorderRadius.circular(5);

  /// Specifies the margin for card widgets.
  EdgeInsets get cardMargin =>
      const EdgeInsets.symmetric(horizontal: 25, vertical: 15);

  /// Specifies the padding for card content.
  EdgeInsets get cardContentPadding => const EdgeInsets.all(10);

  /// Specifies the padding for buttons.
  EdgeInsets get buttonPadding => const EdgeInsets.all(15);

  /// Specifies the padding for text buttons.
  EdgeInsets get textButtonPadding =>
      const EdgeInsets.symmetric(vertical: 10, horizontal: 20);

  /// Specifies the padding for icon backgrounds.
  EdgeInsets get iconBgPadding => const EdgeInsets.all(4);

  /// Specifies the margin for attendees card widgets.
  EdgeInsets get attendeesCardMargin =>
      const EdgeInsets.symmetric(horizontal: 20, vertical: 10);

  /// Specifies the padding for attendees card widgets.
  EdgeInsets get attendeesCardPadding => const EdgeInsets.all(18);

  /// Specifies the symmetric padding for text buttons.
  EdgeInsets get textButtonSymetricPadding =>
      const EdgeInsets.symmetric(horizontal: 20);
}

/// **SizeExtensions Extension**
///
/// Extension providing constant values for widget sizes.
///
/// Example Usage:
/// ```dart
/// context.buttonSized // Accessing the button size constant
/// ```
extension SizeExtensions on BuildContext {
  /// Specifies the size for buttons.
  Size get buttonSized => Size(width, Theme.of(this).buttonTheme.height);

  /// Specifies the size for alert buttons.
  Size get alertButtonSize => Size(150, buttonHeight);
}
