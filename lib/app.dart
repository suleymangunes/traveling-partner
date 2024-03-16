import 'package:flutter/material.dart';
import 'package:traveling_partner/core/init/localization/locale_common_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: LocaleCommonKeys.travelingPartner,
      routerConfig: AppRouterObject.appRouter.config(),
    );
  }
}
