import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/extension/validator/email_validator.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class RegisterEmailTextField extends StatelessWidget {
  const RegisterEmailTextField({
    super.key,
    required TextEditingController emailController,
  }) : _emailController = emailController;

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        isDense: true,
        border: const OutlineInputBorder(),
        hintText: LocaleKeys.email,
        prefixIcon: Icon(
          Icons.mail_outline_rounded,
          size: context.iconSize,
        ),
        errorStyle: context.errorStyle,
      ),
      style: context.titleMedium,
      validator: (value) => (value != null && value.isValidEmail())
          ? null
          : LocaleKeys.validEmail,
    );
  }
}
