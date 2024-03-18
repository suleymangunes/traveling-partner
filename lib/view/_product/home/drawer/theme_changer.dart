import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/dropdown/changer_listtie_with_dropdown.dart';
import 'package:traveling_partner/core/components/dropdown/theme_changer_dropdown.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class ThemeChanger extends StatelessWidget {
  const ThemeChanger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ChangerListtileWithDropdown(
      icon: Icon(Icons.wb_twilight_rounded),
      title: LocaleKeys.theme,
      alertTitle: LocaleKeys.pickTheme,
      child: ThemeChangeDropdown(),
    );
  }
}
