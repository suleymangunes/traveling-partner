import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/dropdown/changer_listtie_with_dropdown.dart';
import 'package:traveling_partner/core/components/dropdown/theme_changer_dropdown.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

class ThemeChanger extends StatelessWidget {
  const ThemeChanger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangerListtileWithDropdown(
      icon: const Icon(Icons.wb_twilight_rounded),
      title: LocaleKeys.themeTheme,
      alertTitle: LocaleKeys.themePickTheme,
      child: const ThemeChangeDropdown(),
    );
  }
}
