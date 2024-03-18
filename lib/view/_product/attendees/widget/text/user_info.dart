import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.user,
  });
  final Users user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.name.toString(),
          style: context.titleLarge,
        ),
        Text(
          user.email.toString(),
          style: context.bodyLargeOutlined,
        ),
      ],
    );
  }
}
