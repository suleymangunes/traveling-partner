import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
        padding: context.buttonPadding,
        minimumSize: context.buttonSized,
      ),
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
          print(_nameController.text);
          print(_emailController.text);
          print(_passwordController.text);

          // await AuthService().createPerson("name", "email", "password");
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: "email7@gmail.com", password: "password");
          await FirebaseFirestore.instance
              .collection("Users")
              .doc("email")
              .set({
            "name": "suleyman",
            "email": "asdf",
          });
        }
      },
      child: Text(
        LocaleKeys.signUp,
        style: context.titleLargeSpacingBg,
      ),
    );
  }
}
