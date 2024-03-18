import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/init/cubit/theme/theme_cubit.dart';
import 'package:traveling_partner/core/init/localization/locale_common_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/core/init/theme/dark/dark_theme_custom.dart';
import 'package:traveling_partner/core/init/theme/light/light_theme_custom.dart';

/// The main application widget.
///
/// It listens to the theme state changes using `BlocBuilder` and `ThemeCubit`
/// to toggle between light and dark themes. Additionally, it configures
/// localization settings and initializes navigation with `AppRouterObject`.
class MyApp extends StatelessWidget {
  /// Constructs the `MyApp` widget.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
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
