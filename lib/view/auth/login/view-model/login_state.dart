import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/auth/login/view-model/i_login_state.dart';

class LoginInitialState extends ILoginState {
  LoginInitialState() : super(StateEnum.initial);
}

class LoginLoadingState extends ILoginState {
  LoginLoadingState() : super(StateEnum.loading);
}

class LoginCompletedState extends ILoginState {
  LoginCompletedState() : super(StateEnum.completed);
}

class LoginErrorState extends ILoginState {
  final dynamic error;
  LoginErrorState(this.error) : super(StateEnum.error);
}
