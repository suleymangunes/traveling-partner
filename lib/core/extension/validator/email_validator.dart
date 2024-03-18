/// **EmailValidator Extension**
///
/// Extension providing a method to validate email addresses.
///
/// Example Usage:
/// ```dart
/// 'example@email.com'.isValidEmail() // Returns true if the email is valid, otherwise false
/// ```
extension EmailValidator on String {
  /// Validates whether the string is a valid email address.
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }
}
