import 'package:traveling_partner/product/state-enum/state_enum.dart';

abstract class ILocationState {
  const ILocationState(this.status);
  final StateEnum status;
}
