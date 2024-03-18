import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';

class DestinationLoadingButton extends StatelessWidget {
  const DestinationLoadingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
        padding: context.buttonPadding,
        minimumSize: context.alertButtonSize,
      ),
      onPressed: () {},
      child: SizedBox(
        height: context.buttonHeight / 2,
        width: context.buttonHeight / 2,
        child: CircularProgressIndicator(
          color: context.colorScheme.background,
        ),
      ),
    );
  }
}
