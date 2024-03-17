import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class DestinationDescription extends StatelessWidget {
  const DestinationDescription({
    super.key,
    required this.locationModel,
  });

  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      locationModel.description ?? LocaleKeys.notFound,
      style: context.bodyLarge,
    );
  }
}
