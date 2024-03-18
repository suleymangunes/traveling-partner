import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/appbar/app_bar_without_back.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// Base app bar for the home screen.
class BaseHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Constructs a [BaseHomeAppBar] widget.
  const BaseHomeAppBar({super.key, this.autoLeading});

  /// Indicates whether to automatically show the leading icon.
  final bool? autoLeading;

  @override
  Widget build(BuildContext context) {
    return AppBarWithoutBack(
      title: LocaleKeys.appTravelingPartner.tr(),
      autoLeading: autoLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
