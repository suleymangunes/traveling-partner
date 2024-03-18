import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
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
            const Spacer(),
            const SignOutButton(),
            context.normalSizedBox,
          ],
        ),
      ),
    );
  }
}
