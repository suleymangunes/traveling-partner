// ignore_for_file: lines_longer_than_80_chars

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/project_locales.dart';

/// Provides static variables and methods related to localization.
class LocaleVariables {
  const LocaleVariables._();

  /// List of available locales.
  static final List<Locale> localesList =
      ProjectLocales.localesMap.keys.toList();

  /// Path to the translations folder.
  static final String localesPath = PathEnum.translations.rawPath;

  /// Fallback locale in case the app is unable to determine the user's preferred locale.
  static final Locale fallBackLocale = ProjectLocaleEnum.en.locale;

  /// Generates a list of DropdownMenuItem<Locale> based on available locales.
  static List<DropdownMenuItem<Locale>> localItems(BuildContext context) {
    final menuItems = <DropdownMenuItem<Locale>>[];
    for (final element in localesList) {
      menuItems.add(
        DropdownMenuItem(
          value: element,
          child: Text(
            ProjectLocales.localesMap[element].toString(),
            style: context.titleMedium,
          ),
        ),
      );
    }
    return menuItems;
  }

  /// Initializes the localization setup.
  static Future<void> init() async {
    await EasyLocalization.ensureInitialized();
  }
}
