import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/auth/register/view-model/i_register_cubit.dart';

class RegisterInitialState extends IRegisterState {
  RegisterInitialState() : super(StateEnum.initial);
}

class RegisterLoadingState extends IRegisterState {
  RegisterLoadingState() : super(StateEnum.loading);
}

class RegisterCompletedState extends IRegisterState {
  RegisterCompletedState() : super(StateEnum.completed);
}

class RegisterErrorState extends IRegisterState {
  final dynamic error;
  RegisterErrorState(this.error) : super(StateEnum.error);
}
