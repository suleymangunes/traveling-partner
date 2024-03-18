import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/product/widget/animation/error_animation.dart';

/// Widget to display an error page in the home screen.
class HomeErrorPage extends StatelessWidget {
  /// Constructs a [HomeErrorPage] widget.
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
            LocaleKeys.alertUnexpectedError.tr(),
            textAlign: TextAlign.center,
            style: context.titleLarge,
          ),
        ),
      ],
    );
  }
}
