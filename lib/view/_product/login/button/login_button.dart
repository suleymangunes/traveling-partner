import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/view/auth/login/model/login_model.dart';
import 'package:traveling_partner/view/auth/login/view-model/i_login_state.dart';
import 'package:traveling_partner/view/auth/login/view-model/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.emailController,
    required this.passwordController,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, ILoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.primary,
            padding: context.buttonPadding,
            minimumSize: context.buttonSized,
          ),
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              final loginModel = LoginModel(
                email: emailController.text,
                password: passwordController.text,
              );
              context.read<LoginCubit>().loginWithEmail(loginModel);
            }
          },
          child: Text(
            LocaleKeys.login,
            style: context.titleLargeSpacingBg,
          ),
        );
      },
    );
  }
}
