// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';

/// **AppBarWithoutBack Widget**
///
/// A widget representing an app bar without a back button.
/// This app bar displays a title and optionally omits the back button.
///
/// Example Usage:
/// ```dart
/// AppBarWithoutBack(title: 'Title', autoLeading: false)
/// ```
class AppBarWithoutBack extends StatelessWidget {
  /// Constructor for AppBarWithoutBack.
  ///
  /// [title] specifies the title text for the app bar.
  /// [autoLeading] is an optional parameter to control the visibility of the back button.
  /// [key] is an optional parameter for widget identification.
  const AppBarWithoutBack({required this.title, super.key, this.autoLeading});

  /// The title text for the app bar.
  final String title;

  /// Controls the visibility of the back button. Defaults to false.
  final bool? autoLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Displaying the title text with appropriate style
      title: Text(
        title,
        style: context.spacingHeadlineSmall,
      ),
      // Controlling the visibility of the back button
      automaticallyImplyLeading: autoLeading ?? false,
    );
  }
}
