import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

/// **ErrorAnimatedDialog Widget**
///
/// A widget representing an animated error dialog.
/// This dialog displays an error animation along with a message,
/// and provides an option to try again.
///
/// Requires the following dependencies:
/// - easy_localization:
/// - lottie:
///
/// Example Usage:
/// ```dart
/// ErrorAnimatedDialog()
/// ```
class ErrorAnimatedDialog extends StatelessWidget {
  /// Constructor for ErrorAnimatedDialog.
  ///
  /// [key] is an optional parameter for widget identification.
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
          // Displaying localized alert message about the problem
          Text(
            LocaleKeys.alertThereisProblem.tr(),
            textAlign: TextAlign.center,
            style: context.titleLarge,
          ),
          // Adding small vertical space between messages
          context.smallSizedBox,
          // Displaying localized message to instruct trying again
          Text(
            LocaleKeys.alertProblemTryAgain.tr(),
            textAlign: TextAlign.center,
            style: context.titleSmall,
          ),
        ],
      ),
      // Aligning actions (buttons) to the center
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        // Button to try again, triggers AppRouter's maybePop function
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.primary,
          ),
          onPressed: AppRouterObject.appRouter.maybePop,
          // Displaying localized text on the button
          child: Text(
            LocaleKeys.buttonTryAgain.tr(),
            style: context.titleLargeSpacingBg,
          ),
        ),
      ],
    );
  }
}
