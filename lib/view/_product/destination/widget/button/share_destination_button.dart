import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// A button widget used to share destination information.
class ShareDestionationButton extends StatelessWidget {
  /// Constructs a [ShareDestionationButton] widget.
  const ShareDestionationButton({
    required this.locationModel,
    super.key,
  });

  /// The location model containing destination information.
  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.share_rounded, size: context.iconSize),
      onPressed: () {
        Share.share(locationModel.name ?? LocaleKeys.alertNotFound.tr());
      },
    );
  }
}
