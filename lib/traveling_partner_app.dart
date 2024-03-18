import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/app.dart';
import 'package:traveling_partner/core/init/cache/theme_caching.dart';
import 'package:traveling_partner/core/init/cubit/theme/theme_cubit.dart';
import 'package:traveling_partner/core/init/localization/locale_variables.dart';
import 'package:traveling_partner/product/dependency-injection/getit_firestore.dart';
import 'package:traveling_partner/product/dependency-injection/getit_login.dart';
import 'package:traveling_partner/product/firebase/firebase_options.dart';

/// Orchestrates application initialization and startup.
class TravelingPartnerApp {
  /// Runs the application with necessary initializations.
  Future<void> run() async {
    _initializeFlutter();
    await _initializeFirebase();
    await _initializeCaching();
    await _initializeLocalization();
    _initializeGetIt();
    _runApp();
  }

  /// Initializes Flutter bindings and sets preferred orientations.
  void _initializeFlutter() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  /// Initializes Firebase with platform-specific options.
  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  /// Sets up dependency injection containers for Firestore and login services.
  void _initializeGetIt() {
    GetItFirestore.setup();
    GetItLogin.setup();
  }

  /// Initializes theme caching.
  Future<void> _initializeCaching() async {
    await ThemeCaching.init();
  }

  /// Sets up application localization.
  Future<void> _initializeLocalization() async {
    await LocaleVariables.init();
  }

  /// Starts the application with localized and themed UI.
  void _runApp() {
    runApp(
      EasyLocalization(
        supportedLocales: LocaleVariables.localesList,
        path: LocaleVariables.localesPath,
        fallbackLocale: LocaleVariables.fallBackLocale,
        child: BlocProvider(
          create: (context) => ThemeCubit(),
          child: const MyApp(),
        ),
      ),
    );
  }
}
