// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/auth/register/model/register_model.dart';
import 'package:traveling_partner/view/auth/register/service/i_register_repository.dart';
import 'package:traveling_partner/view/auth/register/view-model/i_register_cubit.dart';
import 'package:traveling_partner/view/auth/register/view-model/register_state.dart';

/// A BLoC cubit responsible for handling register-related actions and state management.
class RegisterCubit extends Cubit<IRegisterState> {
  /// Constructs a [RegisterCubit] with the provided [registerService].
  RegisterCubit({required this.registerService})
      : super(RegisterInitialState());

  /// The register service used to interact with the repository.
  final IRegisterRepository registerService;

  /// Registers a new user with the provided [registerModel].
  Future<void> register(RegisterModel registerModel) async {
    try {
      emit(RegisterLoadingState());
      // for loading animation seeing
      await Future<void>.delayed(const Duration(seconds: 3));
      await registerService.register(registerModel: registerModel);
      emit(RegisterCompletedState());
    } catch (e) {
      emit(RegisterErrorState(e));
    }
  }
}
