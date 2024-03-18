import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/components/alert/error_animated_dialog.dart';
import 'package:traveling_partner/core/components/alert/loading_animated_dialog.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/product/state-enum/state_enum.dart';
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
      listener: (context, state) {
        if (state.status == StateEnum.loading) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return const LoadingAnimatedDialog();
            },
          );
        } else if (state.status == StateEnum.error) {
          Navigator.pop(context);
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return const ErrorAnimatedDialog();
            },
          );
        } else if (state.status == StateEnum.completed) {
          Navigator.pop(context);
          AppRouterObject.appRouter
              .pushAndPopUntil(const HomeRoute(), predicate: (route) => false);
        }
      },
      builder: (context, state) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.primary,
            padding: context.buttonPadding,
            minimumSize: context.buttonSized,
          ),
          onPressed: () async {
            // if (_formKey.currentState!.validate()) {
            //   final loginModel = LoginModel(
            //     email: emailController.text,
            //     password: passwordController.text,
            //   );
            //   context.read<LoginCubit>().loginWithEmail(loginModel);
            // }
            print(context.locale);
            print(LocaleKeys.buttonLogin.tr());
          },
          child: Text(
            LocaleKeys.buttonLogin.tr(),
            style: context.titleLargeSpacingBg,
          ),
        );
      },
    );
  }
}
