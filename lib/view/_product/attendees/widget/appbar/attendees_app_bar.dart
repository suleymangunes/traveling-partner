import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// A custom app bar for the Attendees screen.
class AttendeesAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Constructs an [AttendeesAppBar] widget.
  const AttendeesAppBar({super.key, this.autoLeading});

  /// Determines whether the leading icon should automatically navigate back.
  final bool? autoLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          size: context.iconSize,
        ),
        onPressed: AppRouterObject.appRouter.maybePop,
      ),
      title: Text(
        LocaleKeys.buttonWhosWithMe.tr(),
        style: context.spacingHeadlineSmall,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
