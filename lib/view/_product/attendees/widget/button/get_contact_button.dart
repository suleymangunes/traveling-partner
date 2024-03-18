import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class GetContactButton extends StatelessWidget {
  const GetContactButton({
    super.key,
    required this.user,
  });
  final Users user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.send_rounded,
        color: context.colorScheme.primary,
        size: context.mediumIconSize,
      ),
    );
  }
}
