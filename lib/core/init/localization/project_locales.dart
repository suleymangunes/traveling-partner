import 'package:flutter/material.dart';

class ProjectLocales {
  const ProjectLocales._();
  static final Map<Locale, String> localesMap = {
    ProjectLocaleEnum.en.locale: LocalizationEnum.english.rawValue,
    ProjectLocaleEnum.tr.locale: LocalizationEnum.turkish.rawValue,
  };
}

enum LocalizationEnum {
  english('English'),
  turkish('Turkish'),
  ;

  final String value;
  const LocalizationEnum(this.value);

  String get rawValue => value;
}

enum ProjectLocaleEnum {
  en(Locale('en', 'US')),
  tr(Locale('tr', 'TR')),
  ;

  final Locale value;
  const ProjectLocaleEnum(this.value);

  Locale get locale => value;
}

enum PathEnum {
  translations('assets/translations'),
  ;

  final String value;
  const PathEnum(this.value);

  String get rawPath => value;
}
