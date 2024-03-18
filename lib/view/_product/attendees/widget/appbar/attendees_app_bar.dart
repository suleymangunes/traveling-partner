import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

class AttendeesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AttendeesAppBar({super.key, this.autoLeading});
  final bool? autoLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          size: context.iconSize,
        ),
        onPressed: () {
          AppRouterObject.appRouter.maybePop();
        },
      ),
      title: Text(
        LocaleKeys.buttonWhosWithMe,
        style: context.spacingHeadlineSmall,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
