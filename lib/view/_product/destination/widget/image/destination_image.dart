import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_common_keys.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class DestinationImage extends StatelessWidget {
  const DestinationImage({
    super.key,
    required this.locationModel,
  });

  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.stackHeight,
      child: Image.network(
        locationModel.image ?? LocaleCommonKeys.untitledImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
