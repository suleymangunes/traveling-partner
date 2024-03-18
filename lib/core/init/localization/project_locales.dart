import 'package:flutter/material.dart';

/// Provides a mapping between locales and their corresponding language names.
class ProjectLocales {
  const ProjectLocales._();

  /// Map of locales to their language names.
  static final Map<Locale, String> localesMap = {
    ProjectLocaleEnum.en.locale: LocalizationEnum.english.rawValue,
    ProjectLocaleEnum.tr.locale: LocalizationEnum.turkish.rawValue,
  };
}

/// Enum representing different localizations supported by the app.
enum LocalizationEnum {
  /// English locale
  english('English'),

  /// Turkish locale
  turkish('Turkish'),
  ;

  /// Constructs a LocalizationEnum with the given raw value.
  const LocalizationEnum(this.value);

  /// Raw value of the localization.
  final String value;

  /// Returns the raw value of the localization.
  String get rawValue => value;
}

/// Enum representing different project locales.
enum ProjectLocaleEnum {
  /// English locale
  en(Locale('en', 'US')),

  /// Turkish locale
  tr(Locale('tr', 'TR')),
  ;

  /// Constructs a ProjectLocaleEnum with the given locale value.
  const ProjectLocaleEnum(this.value);

  /// Locale value.
  final Locale value;

  /// Returns the locale value.
  Locale get locale => value;
}

/// Enum representing different paths used in the project.
enum PathEnum {
  /// Translations path
  translations('assets/translations'),
  ;

  /// Constructs a PathEnum with the given raw path value.
  const PathEnum(this.value);

  /// Raw path value.
  final String value;

  /// Returns the raw path value.
  String get rawPath => value;
}
