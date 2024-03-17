import 'package:traveling_partner/product/state-enum/state_enum.dart';

abstract class ILoginState {
  const ILoginState(this.status);
  final StateEnum status;
}
