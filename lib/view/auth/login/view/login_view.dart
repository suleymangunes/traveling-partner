import 'package:flutter/material.dart';
import 'package:traveling_partner/core/components/divider/or_widget.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/product/widget/image/login_image.dart';
import 'package:traveling_partner/view/_product/login/button/login_button.dart';
import 'package:traveling_partner/view/_product/login/button/sign_in_with_google.dart';
import 'package:traveling_partner/view/_product/login/text-button/havent_account.dart';
import 'package:traveling_partner/view/_product/login/textfield/email_textfield.dart';
import 'package:traveling_partner/view/_product/login/textfield/password_text_field.dart';

/// The view widget for the login screen.
class LoginView extends StatefulWidget {
  /// Constructs a [LoginView] widget.
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void changePasswordObscure() {
    setState(() {
      passwordObscure = !passwordObscure;
    });
  }

  bool passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: context.widgetPadding,
          child: Column(
            children: [
              context.bigSizedBox,
              const LoginImage(),
              context.bigSizedBox,
              EmailTextField(emailController: _emailController),
              context.normalSizedBox,
              PasswordTextField(
                passwordController: _passwordController,
                passwordObscure: passwordObscure,
                onPressed: changePasswordObscure,
              ),
              context.bigXSizedBox,
              LoginButton(
                formKey: _formKey,
                emailController: _emailController,
                passwordController: _passwordController,
              ),
              context.bigXSizedBox,
              const OrWidget(),
              context.bigXSizedBox,
              const SignInWithGoogle(),
              const Spacer(),
              const HaventAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
