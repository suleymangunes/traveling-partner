import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/auth/login/model/login_model.dart';
import 'package:traveling_partner/view/auth/login/service/i_login_repository.dart';
import 'package:traveling_partner/view/auth/login/view-model/i_login_state.dart';
import 'package:traveling_partner/view/auth/login/view-model/login_state.dart';

class LoginCubit extends Cubit<ILoginState> {
  LoginCubit({required this.loginService}) : super(LoginInitialState());

  final ILoginRepository loginService;

  Future<void> loginWithEmail(LoginModel loginModel) async {
    try {
      emit(LoginLoadingState());
      await Future.delayed(const Duration(seconds: 3));
      await loginService.loginWithEmail(loginModel: loginModel);
      emit(LoginCompletedState());
    } catch (e) {
      emit(LoginErrorState(e));
    }
  }
}
