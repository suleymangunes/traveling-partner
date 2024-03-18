/// **StringValidator Extension**
///
/// Extension providing a method to validate strings for emptiness.
///
/// Example Usage:
/// ```dart
/// 'example'.validateEmpty('Error message') // Returns null if the string is not empty, otherwise returns the error message
/// ```
extension StringValidator on String? {
  /// Validates whether the string is empty.
  ///
  /// Returns the error message if the string is empty, otherwise returns null.
  String? validateEmpty(String errorMessage) {
    if (this == null || this!.isEmpty) {
      return errorMessage;
    }
    return null;
  }
}
