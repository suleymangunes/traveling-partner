import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/extension/validator/string_validator.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required TextEditingController passwordController,
    required this.passwordObscure,
    this.onPressed,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;
  final bool passwordObscure;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _passwordController,
      obscureText: passwordObscure,
      decoration: InputDecoration(
        isDense: true,
        border: const OutlineInputBorder(),
        hintText: LocaleKeys.infoPassword.tr(),
        prefixIcon: Icon(
          Icons.lock_outline_rounded,
          size: context.iconSize,
        ),
        errorStyle: context.errorStyle,
        suffixIcon: IconButton(
          icon: Icon(
            passwordObscure
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            size: context.iconSize,
          ),
          onPressed: onPressed,
          // onPressed: () {},
        ),
      ),
      style: context.titleMedium,
      validator: (value) => value.validateEmpty(
        LocaleKeys.alertValidPassword.tr(),
      ),
    );
  }
}
