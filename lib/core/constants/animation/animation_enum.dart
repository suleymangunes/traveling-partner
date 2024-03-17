enum AnimationEnum {
  travel('travel'),
  error('error'),
  wrong('wrong'),
  walk('walk'),
  fly('fly'),
  ;

  const AnimationEnum(this.value);

  final String value;

  String get path => 'assets/animation/$value.json';
}
