import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
        padding: context.buttonPadding,
        minimumSize: context.buttonSized,
      ),
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
          print(emailController.text);
          print(passwordController.text);
          // print(_emailController.text);
          // print(_passwordController.text);
          // print("basladi");
          // await FirebaseAuth.instance.signInWithEmailAndPassword(
          //     email: "email@gmail.com", password: "password");
          // print("giri yapildi");
          // await FirebaseAuth.instance.signOut();
          // print("cikis yapildi");
        }
      },
      child: Text(
        LocaleKeys.login,
        style: context.titleLargeSpacingBg,
      ),
    );
  }
}
