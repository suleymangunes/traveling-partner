import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/auth/login/view-model/get_it_login_instance.dart';
import 'package:traveling_partner/view/auth/login/view-model/login_cubit.dart';
import 'package:traveling_partner/view/auth/login/view/login_view.dart';

@RoutePage()
class LoginPage extends StatelessWidget with GetItLoginInstance {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(loginService: loginService()),
      child: const LoginView(),
    );
  }
}
