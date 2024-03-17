import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';

class ShareDestionationButton extends StatelessWidget {
  const ShareDestionationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.share_rounded, size: context.iconSize),
      onPressed: () {},
    );
  }
}
