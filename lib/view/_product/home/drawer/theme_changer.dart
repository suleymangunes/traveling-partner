import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/dropdown/changer_listtie_with_dropdown.dart';
import 'package:traveling_partner/core/components/dropdown/theme_changer_dropdown.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// A widget for changing the theme.
class ThemeChanger extends StatelessWidget {
  /// Constructs a [ThemeChanger] widget.
  const ThemeChanger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangerListtileWithDropdown(
      icon: const Icon(Icons.wb_twilight_rounded),
      title: LocaleKeys.themeTheme.tr(),
      alertTitle: LocaleKeys.themePickTheme.tr(),
      child: const ThemeChangeDropdown(),
    );
  }
}
