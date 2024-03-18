import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class CustomException implements Exception {
  CustomException();

  @override
  String toString() {
    return LocaleKeys.unexpectedError;
  }
}
