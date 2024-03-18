import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/dropdown/changer_listtie_with_dropdown.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_variables.dart';
import 'package:traveling_partner/view/_product/home/drawer/drawer_animation.dart';
import 'package:traveling_partner/view/_product/home/drawer/drawer_text.dart';
import 'package:traveling_partner/view/_product/home/drawer/sign_out_button.dart';
import 'package:traveling_partner/view/_product/home/drawer/theme_changer.dart';

class BaseHomePageDrawer extends StatelessWidget {
  const BaseHomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          children: [
            const DrawerAnimation(),
            context.smallSizedBox,
            const DrawerText(),
            context.smallSizedBox,
            const ThemeChanger(),
            ChangerListtileWithDropdown(
              icon: const Icon(Icons.language_rounded),
              title: "Uygulama Dili",
              alertTitle: "Dil Seç",
              child: changeLocalWithDropdown(context),
            ),
            const Spacer(),
            const SignOutButton(),
            context.normalSizedBox,
          ],
        ),
      ),
    );
  }

  DropdownButton<dynamic> changeLocalWithDropdown(BuildContext context) {
    return DropdownButton(
      value: context.locale,
      items: LocaleVariables.localItems(context),
      onChanged: (value) {
        context.setLocale(value);
        Navigator.pop(context);
      },
    );
  }
}
