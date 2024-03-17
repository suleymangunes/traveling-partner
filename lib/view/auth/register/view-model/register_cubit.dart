import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/auth/register/model/register_model.dart';
import 'package:traveling_partner/view/auth/register/service/i_register_repository.dart';
import 'package:traveling_partner/view/auth/register/view-model/i_register_cubit.dart';
import 'package:traveling_partner/view/auth/register/view-model/register_state.dart';

class RegisterCubit extends Cubit<IRegisterState> {
  RegisterCubit({required this.registerService})
      : super(RegisterInitialState());

  final IRegisterRepository registerService;

  Future<void> register(RegisterModel registerModel) async {
    try {
      emit(RegisterLoadingState());
      await Future.delayed(const Duration(seconds: 3));
      await registerService.register(registerModel: registerModel);
      emit(RegisterCompletedState());
    } catch (e) {
      emit(RegisterErrorState(e));
    }
  }
}
