import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

class ErrorAnimatedDialog extends StatelessWidget {
  const ErrorAnimatedDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: SizedBox(
        height: context.animationHeight,
        child: Lottie.asset(
          AnimationEnum.wrong.path,
          fit: BoxFit.fitHeight,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            LocaleKeys.alertThereisProblem.tr(),
            textAlign: TextAlign.center,
            style: context.titleLarge,
          ),
          context.smallSizedBox,
          Text(
            LocaleKeys.alertProblemTryAgain.tr(),
            textAlign: TextAlign.center,
            style: context.titleSmall,
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.primary,
          ),
          onPressed: () {
            AppRouterObject.appRouter.maybePop();
          },
          child: Text(
            LocaleKeys.buttonTryAgain.tr(),
            style: context.titleLargeSpacingBg,
          ),
        ),
      ],
    );
  }
}
