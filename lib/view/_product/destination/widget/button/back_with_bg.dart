import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';

/// A widget representing a back button with background.
class BackWithBg extends StatelessWidget {
  /// Constructs a [BackWithBg] widget.
  const BackWithBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: AppRouterObject.appRouter.maybePop,
      child: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          borderRadius: context.iconBgRadius,
        ),
        child: Padding(
          padding: context.iconBgPadding,
          child: Icon(
            Icons.arrow_back_ios_outlined,
            size: context.iconSize,
          ),
        ),
      ),
    );
  }
}
