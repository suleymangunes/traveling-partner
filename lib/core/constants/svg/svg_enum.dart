enum SvgEnum {
  traveling('traveling'),
  gooogle('google'),
  ;

  const SvgEnum(this.value);

  final String value;

  String get path => 'assets/svg/$value.svg';
}
