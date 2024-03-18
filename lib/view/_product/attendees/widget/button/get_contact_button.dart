import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/service/mail-sender/mail_sender_service.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// A button widget to get contact information.
class GetContactButton extends StatelessWidget {
  /// Constructs a [GetContactButton] widget.
  const GetContactButton({
    required this.user,
    required this.location,
    super.key,
  });

  /// The user information.
  final Users user;

  /// The location information.
  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        MailSenderService.getContact(user: user, location: location);
      },
      icon: Icon(
        Icons.send_rounded,
        color: context.colorScheme.primary,
        size: context.mediumIconSize,
      ),
    );
  }
}
