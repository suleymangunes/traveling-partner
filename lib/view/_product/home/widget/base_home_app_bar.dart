import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/appbar/app_bar_without_back.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class BaseHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseHomeAppBar({super.key, this.autoLeading});
  final bool? autoLeading;

  @override
  Widget build(BuildContext context) {
    return AppBarWithoutBack(
      title: LocaleKeys.travelingPartner,
      autoLeading: autoLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
