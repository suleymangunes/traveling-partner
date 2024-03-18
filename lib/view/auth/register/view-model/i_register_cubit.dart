import 'package:traveling_partner/product/state-enum/state_enum.dart';

/// An abstract class representing the state of the register process.
abstract class IRegisterState {
  /// Constructs an instance of [IRegisterState] with the provided [status].
  const IRegisterState(this.status);

  /// The status of the register process.
  final StateEnum status;
}
