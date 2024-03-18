import 'package:traveling_partner/product/state-enum/state_enum.dart';

/// Abstract class representing the state of the login process.
abstract class ILoginState {
  /// Constructs an instance of [ILoginState] with the given [status].
  const ILoginState(this.status);

  /// The status of the login process.
  final StateEnum status;
}
