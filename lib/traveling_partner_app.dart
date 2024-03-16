import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:traveling_partner/app.dart';
import 'package:traveling_partner/firebase_options.dart';

class TravelingPartnerApp {
  Future<void> run() async {
    _initializeFlutter();
    await _initializeFirebase();
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

  void _runApp() {
    runApp(const MyApp());
  }
}
