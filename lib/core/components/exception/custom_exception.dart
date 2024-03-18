import 'package:easy_localization/easy_localization.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

class CustomException implements Exception {
  CustomException();

  @override
  String toString() {
    return LocaleKeys.alertUnexpectedError.tr();
  }
}
