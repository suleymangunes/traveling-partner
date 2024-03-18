import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class DestinationName extends StatelessWidget {
  const DestinationName({
    super.key,
    required this.locationModel,
  });

  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      locationModel.name ?? LocaleKeys.alertNotFound.tr(),
      style: context.spacingHeadlineSmallBold,
    );
  }
}
