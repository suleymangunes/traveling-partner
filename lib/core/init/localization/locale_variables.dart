import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/project_locales.dart';

class LocaleVariables {
  const LocaleVariables._();

  static final List<Locale> localesList =
      ProjectLocales.localesMap.keys.toList();
  static final String localesPath = PathEnum.translations.rawPath;
  static final Locale fallBackLocale = ProjectLocaleEnum.en.locale;

  static List<DropdownMenuItem> localItems(BuildContext context) {
    List<DropdownMenuItem> menuItems = [];
    for (var element in localesList) {
      menuItems.add(DropdownMenuItem(
        value: element,
        child: Text(
          ProjectLocales.localesMap[element].toString(),
          style: context.titleMedium,
        ),
      ));
    }
    return menuItems;
  }

  static Future<void> init() async {
    await EasyLocalization.ensureInitialized();
  }
}
