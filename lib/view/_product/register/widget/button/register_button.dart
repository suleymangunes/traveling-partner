import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/components/alert/error_animated_dialog.dart';
import 'package:traveling_partner/core/components/alert/loading_animated_dialog.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/auth/register/model/register_model.dart';
import 'package:traveling_partner/view/auth/register/view-model/i_register_cubit.dart';
import 'package:traveling_partner/view/auth/register/view-model/register_cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _nameController = nameController,
        _emailController = emailController,
        _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, IRegisterState>(
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
          AppRouterObject.appRouter.pushAndPopUntil(
            const HomeRoute(),
            predicate: (route) => false,
          );
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
            if (_formKey.currentState!.validate()) {
              final registerModel = RegisterModel(
                name: _nameController.text,
                email: _emailController.text,
                password: _passwordController.text,
              );
              context.read<RegisterCubit>().register(registerModel);
            }
          },
          child: Text(
            LocaleKeys.signUp,
            style: context.titleLargeSpacingBg,
          ),
        );
      },
    );
  }
}
