import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// A widget displaying the definition of a destination.
class DestinationDefinition extends StatelessWidget {
  /// Constructs a [DestinationDefinition] widget.
  const DestinationDefinition({
    required this.locationModel,
    super.key,
  });

  /// The [LocationModel] containing information about the destination.
  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      locationModel.definition ?? LocaleKeys.alertNotFound.tr(),
      style: context.titleSmall,
    );
  }
}
