/// **SvgEnum Enumeration**
///
/// An enumeration representing SVG image types and their file paths.
///
/// Example Usage:
/// ```dart
/// SvgEnum.traveling // Accessing the 'traveling' SVG image path
/// ```
enum SvgEnum {
  /// Represents the 'traveling' SVG image.
  traveling('traveling'),

  /// Represents the 'google' SVG image.
  gooogle('google'),

  /// Represents the 'register' SVG image.
  register('register'),

  /// Represents the 'user' SVG image.
  user('user'),
  ;

  /// Constructor for SvgEnum.
  ///
  /// [value] specifies the string value associated with the SVG image
  const SvgEnum(this.value);

  /// The string value associated with the SVG image.
  final String value;

  /// SvgEnum.traveling.path // Returns the path for the 'traveling' SVG image
  String get path => 'assets/svg/$value.svg';
}
