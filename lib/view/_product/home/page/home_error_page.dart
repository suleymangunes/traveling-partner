import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/product/widget/animation/error_animation.dart';

class HomeErrorPage extends StatelessWidget {
  const HomeErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CenteredErrorAnimation(),
        context.smallSizedBox,
        Padding(
          padding: context.normalWidgetPadding,
          child: Text(
            LocaleKeys.unexpectedError,
            textAlign: TextAlign.center,
            style: context.titleLarge,
          ),
        ),
      ],
    );
  }
}
