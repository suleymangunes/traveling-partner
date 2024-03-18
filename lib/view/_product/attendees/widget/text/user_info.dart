import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// A widget displaying user information.
class UserInfo extends StatelessWidget {
  /// Constructs a [UserInfo] widget.
  const UserInfo({
    required this.user,
    super.key,
  });

  /// The user information to display.
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
