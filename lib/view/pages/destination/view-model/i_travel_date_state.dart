import 'package:traveling_partner/product/state-enum/state_enum.dart';

abstract class ITravelDateState {
  const ITravelDateState(this.status);
  final StateEnum status;
}
