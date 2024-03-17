import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/extension/validator/string_validator.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';

class NameSurnameTextField extends StatelessWidget {
  const NameSurnameTextField({
    super.key,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        isDense: true,
        border: const OutlineInputBorder(),
        hintText: LocaleKeys.nameSurname,
        prefixIcon: Icon(
          Icons.person_outline_rounded,
          size: context.iconSize,
        ),
        errorStyle: context.errorStyle,
      ),
      style: context.titleMedium,
      validator: (value) => value.validateEmpty(LocaleKeys.validName),
    );
  }
}
