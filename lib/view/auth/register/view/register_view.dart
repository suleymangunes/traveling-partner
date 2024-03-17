import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/view/_product/login/textfield/password_text_field.dart';
import 'package:traveling_partner/view/_product/register/widget/button/register_button.dart';
import 'package:traveling_partner/view/_product/register/widget/image/register_image.dart';
import 'package:traveling_partner/view/_product/register/widget/textbutton/login_now.dart';
import 'package:traveling_partner/view/_product/register/widget/textfield/name_surname_text_field.dart';
import 'package:traveling_partner/view/_product/register/widget/textfield/register_email_textfield.dart';
import 'package:traveling_partner/view/auth/register/service/register_service.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  AuthService authService = AuthService();

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
              const RegisterImage(),
              context.bigSizedBox,
              NameSurnameTextField(nameController: _nameController),
              context.normalSizedBox,
              RegisterEmailTextField(emailController: _emailController),
              context.normalSizedBox,
              PasswordTextField(
                passwordController: _passwordController,
                passwordObscure: passwordObscure,
                onPressed: changePasswordObscure,
              ),
              context.normalSizedBox,
              context.bigXSizedBox,
              RegisterButton(
                formKey: _formKey,
                nameController: _nameController,
                emailController: _emailController,
                passwordController: _passwordController,
              ),
              const Spacer(),
              const LoginNow(),
            ],
          ),
        ),
      ),
    );
  }
}
