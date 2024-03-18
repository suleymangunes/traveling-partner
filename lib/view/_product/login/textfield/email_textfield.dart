import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/extension/validator/email_validator.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
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
        hintText: LocaleKeys.infoEmail.tr(),
        prefixIcon: Icon(
          Icons.mail_outline_rounded,
          size: context.iconSize,
        ),
        errorStyle: context.errorStyle,
      ),
      style: context.titleMedium,
      validator: (value) => (value != null && value.isValidEmail())
          ? null
          : LocaleKeys.alertValidEmail.tr(),
    );
  }
}
