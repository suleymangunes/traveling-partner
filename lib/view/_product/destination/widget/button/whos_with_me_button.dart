import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class WhosWithMeButton extends StatelessWidget {
  const WhosWithMeButton({
    super.key,
    required this.locationModel,
  });
  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
        padding: context.buttonPadding,
        minimumSize: context.smallButtonSize,
      ),
      onPressed: () {
        AppRouterObject.appRouter
            .push(AttendeesRoute(locationModel: locationModel));
      },
      child: Text(
        LocaleKeys.whosWithMe,
        style: context.titleLargeSpacingBg,
      ),
    );
  }
}
