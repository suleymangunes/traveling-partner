// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/auth/login/model/login_model.dart';
import 'package:traveling_partner/view/auth/login/service/i_login_repository.dart';
import 'package:traveling_partner/view/auth/login/view-model/i_login_state.dart';
import 'package:traveling_partner/view/auth/login/view-model/login_state.dart';

/// A BLoC (Business Logic Component) responsible for managing the login process.
class LoginCubit extends Cubit<ILoginState> {
  /// Constructs a [LoginCubit] with the specified [loginService].
  LoginCubit({required this.loginService}) : super(LoginInitialState());

  /// The repository for handling login operations.
  final ILoginRepository loginService;

  /// Logs in with the provided [loginModel].
  Future<void> loginWithEmail(LoginModel loginModel) async {
    try {
      emit(LoginLoadingState());
      await Future<void>.delayed(const Duration(seconds: 3));
      await loginService.loginWithEmail(loginModel: loginModel);
      emit(LoginCompletedState());
    } catch (e) {
      emit(LoginErrorState(e));
    }
  }
}
