enum AnimationEnum {
  travel('travel'),
  error('error'),
  ;

  const AnimationEnum(this.value);

  final String value;

  String get path => 'assets/animation/$value.json';
}
