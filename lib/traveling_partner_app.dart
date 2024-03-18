import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/app.dart';
import 'package:traveling_partner/core/init/cache/theme_caching.dart';
import 'package:traveling_partner/core/init/cubit/theme/theme_cubit.dart';
import 'package:traveling_partner/core/init/localization/locale_variables.dart';
import 'package:traveling_partner/product/dependency-injection/getit_login.dart';
import 'package:traveling_partner/product/firebase/firebase_options.dart';
import 'package:traveling_partner/product/dependency-injection/getit_firestore.dart';

class TravelingPartnerApp {
  Future<void> run() async {
    _initializeFlutter();
    await _initializeFirebase();
    await _initializeCaching();
    await _initializeLocalization();
    _initializeGetIt();
    _runApp();
  }

  void _initializeFlutter() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  void _initializeGetIt() {
    GetItFirestore.setup();
    GetItLogin.setup();
  }

  Future<void> _initializeCaching() async {
    await ThemeCaching.init();
  }

  Future<void> _initializeLocalization() async {
    await LocaleVariables.init();
  }

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
