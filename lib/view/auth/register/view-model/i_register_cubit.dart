import 'package:traveling_partner/product/state-enum/state_enum.dart';

abstract class IRegisterState {
  const IRegisterState(this.status);
  final StateEnum status;
}
