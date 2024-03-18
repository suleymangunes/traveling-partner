enum SvgEnum {
  traveling('traveling'),
  gooogle('google'),
  register('register'),
  user('user'),
  ;

  const SvgEnum(this.value);

  final String value;

  String get path => 'assets/svg/$value.svg';
}
