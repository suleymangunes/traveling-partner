import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/auth/register/view-model/i_register_cubit.dart';

/// Represents the initial state of the register process.
class RegisterInitialState extends IRegisterState {
  /// Constructs a [RegisterInitialState].
  RegisterInitialState() : super(StateEnum.initial);
}

/// Represents the loading state of the register process.
class RegisterLoadingState extends IRegisterState {
  /// Constructs a [RegisterLoadingState].
  RegisterLoadingState() : super(StateEnum.loading);
}

/// Represents the completed state of the register process.
class RegisterCompletedState extends IRegisterState {
  /// Constructs a [RegisterCompletedState].
  RegisterCompletedState() : super(StateEnum.completed);
}

/// Represents the error state of the register process.
class RegisterErrorState extends IRegisterState {
  /// Constructs a [RegisterErrorState] with the provided [error].
  RegisterErrorState(this.error) : super(StateEnum.error);

  /// The error object associated with the error state.
  final dynamic error;
}
