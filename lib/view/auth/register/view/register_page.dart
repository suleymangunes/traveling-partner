import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/auth/register/view-model/get_it_register_instance.dart';
import 'package:traveling_partner/view/auth/register/view-model/register_cubit.dart';
import 'package:traveling_partner/view/auth/register/view/register_view.dart';

/// A page widget for the user registration process.
@RoutePage()
class RegisterPage extends StatelessWidget with GetItRegisterInstance {
  /// Constructs a [RegisterPage] widget.
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(registerService: registerService()),
      child: const RegisterView(),
    );
  }
}
