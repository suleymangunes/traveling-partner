// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';

/// **ChangerListtileWithDropdown Widget**
///
/// A widget representing a list tile with an icon, title, and dropdown.
/// Tapping on the list tile shows an alert dialog with the provided child widget.
///
/// Requires the following dependencies:
///
/// Example Usage:
/// ```dart
/// ChangerListtileWithDropdown(
///   icon: Icon(Icons.settings),
///   title: 'Settings',
///   alertTitle: 'Change Settings',
///   child: MyDropdownWidget(),
/// )
/// ```
class ChangerListtileWithDropdown extends StatelessWidget {
  /// Constructor for ChangerListtileWithDropdown.
  ///
  /// [icon] specifies the leading icon for the list tile.
  /// [title] specifies the title text for the list tile.
  /// [alertTitle] specifies the title text for the alert dialog.
  /// [child] specifies the widget to be displayed in the alert dialog.
  /// [key] is an optional parameter for widget identification.
  const ChangerListtileWithDropdown({
    required this.icon,
    required this.title,
    required this.alertTitle,
    required this.child,
    super.key,
  });

  /// The leading icon for the list tile.
  final Icon icon;

  /// The title text for the list tile.
  final String title;

  /// The title text for the alert dialog.
  final String alertTitle;

  /// The widget to be displayed in the alert dialog.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showDialog(context);
      },
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: context.titleMedium,
        ),
      ),
    );
  }

  /// Shows an alert dialog with the provided child widget.s
  Future<dynamic> _showDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          alertTitle,
          textAlign: TextAlign.center,
          style: context.titleLarge,
        ),
        content: child,
      ),
    );
  }
}
