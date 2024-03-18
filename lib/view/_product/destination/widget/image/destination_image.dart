import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_common_keys.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// A widget displaying the image of a destination.
class DestinationImage extends StatelessWidget {
  /// Constructs a [DestinationImage] widget.
  const DestinationImage({
    required this.locationModel,
    super.key,
  });

  /// The location model containing destination information.
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
