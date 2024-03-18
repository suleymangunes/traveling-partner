import 'package:easy_localization/easy_localization.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// **CustomException Class**
///
/// A custom exception class representing unexpected errors.
///
/// Requires the following dependencies:
/// - easy_localization:
///
/// Example Usage:
/// ```dart
/// throw CustomException();
/// ```
class CustomException implements Exception {
  /// Constructor for CustomException.
  CustomException();

  @override
  String toString() {
    return LocaleKeys.alertUnexpectedError.tr();
  }
}
