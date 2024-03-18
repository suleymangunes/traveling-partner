/// **AnimationEnum Enumeration**
///
/// An enumeration representing animation types and their file paths.
///
/// Example Usage:
/// ```dart
/// AnimationEnum.travel // Accessing the 'travel' animation path
/// ```
enum AnimationEnum {
  /// Represents the 'travel' animation.
  travel('travel'),

  /// Represents the 'error' animation.
  error('error'),

  /// Represents the 'wrong' animation.
  wrong('wrong'),

  /// Represents the 'walk' animation.
  walk('walk'),

  /// Represents the 'fly' animation.
  fly('fly'),
  ;

  /// Constructor for AnimationEnum.
  ///
  /// [value] specifies the string value associated with the animation.
  const AnimationEnum(this.value);

  /// The string value associated with the animation.
  final String value;

  /// AnimationEnum.travel.path // Returns the path for the 'travel' animation
  String get path => 'assets/animation/$value.json';
}
