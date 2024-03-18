import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/extension/validator/string_validator.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// A text field widget for entering passwords.
class PasswordTextField extends StatelessWidget {
  /// Constructs a [PasswordTextField] widget.
  const PasswordTextField({
    required TextEditingController passwordController,
    required this.passwordObscure,
    super.key,
    this.onPressed,
  }) : _passwordController = passwordController;

  /// Controller for managing the password text field.
  final TextEditingController _passwordController;

  /// Indicates whether the password should be obscured.
  final bool passwordObscure;

  /// Callback function triggered when the visibility button is pressed.
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
