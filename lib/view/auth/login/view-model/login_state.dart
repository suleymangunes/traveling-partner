import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/auth/login/view-model/i_login_state.dart';

/// Represents the initial state of the login process.
class LoginInitialState extends ILoginState {
  /// Constructs a [LoginInitialState] instance.
  LoginInitialState() : super(StateEnum.initial);
}

/// Represents the loading state of the login process.
class LoginLoadingState extends ILoginState {
  /// Constructs a [LoginLoadingState] instance.
  LoginLoadingState() : super(StateEnum.loading);
}

/// Represents the completed state of the login process.
class LoginCompletedState extends ILoginState {
  /// Constructs a [LoginCompletedState] instance.
  LoginCompletedState() : super(StateEnum.completed);
}

/// Represents the error state of the login process.
class LoginErrorState extends ILoginState {
  /// Constructs a [LoginErrorState] instance with the specified [error].
  LoginErrorState(this.error) : super(StateEnum.error);

  /// The error object associated with this state.
  final dynamic error;
}
