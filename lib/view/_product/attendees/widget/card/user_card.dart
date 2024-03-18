import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/view/_product/attendees/widget/button/get_contact_button.dart';
import 'package:traveling_partner/view/_product/attendees/widget/image/user_image.dart';
import 'package:traveling_partner/view/_product/attendees/widget/text/user_info.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.user,
    required this.location,
  });

  final Users user;
  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: context.attendeesCardMargin,
      surfaceTintColor: Colors.transparent,
      elevation: context.elevation,
      child: Padding(
        padding: context.attendeesCardPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const UserImage(),
            context.listTileSizedBox,
            UserInfo(user: user),
            const Spacer(),
            GetContactButton(
              user: user,
              location: location,
            )
          ],
        ),
      ),
    );
  }
}
