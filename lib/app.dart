import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/init/cubit/theme/theme_cubit.dart';
import 'package:traveling_partner/core/init/localization/locale_common_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/core/init/theme/dark/dark_theme_custom.dart';
import 'package:traveling_partner/core/init/theme/light/light_theme_custom.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return MaterialApp.router(
          theme: LightThemeCustom().theme,
          darkTheme: DarkThemeCustom().theme,
          themeMode: state,
          debugShowCheckedModeBanner: false,
          title: LocaleCommonKeys.travelingPartner,
          routerConfig: AppRouterObject.appRouter.config(),
        );
      },
    );
  }
}
