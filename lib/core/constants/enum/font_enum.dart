/// **FontEnum Enumeration**
///
/// An enumeration representing font types.
///
/// Example Usage:
/// ```dart
/// FontEnum.cabinRegular // Accessing the 'CabinRegular' font
/// ```
enum FontEnum {
  /// Represents the 'CabinRegular' font.
  cabinRegular('CabinRegular'),
  ;

  /// Constructor for FontEnum.
  ///
  /// [value] specifies the string value associated with the font.
  const FontEnum(this.value);

  /// The string value associated with the font.
  final String value;
}
