import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';

class AppBarWithoutBack extends StatelessWidget {
  const AppBarWithoutBack({super.key, required this.title, this.autoLeading});
  final String title;
  final bool? autoLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: context.spacingHeadlineSmall,
      ),
      automaticallyImplyLeading: autoLeading ?? false,
    );
  }
}
