import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/init/cache/theme_caching.dart';

/// **ThemeCubit Class**
///
/// A Cubit class for managing the theme mode.
///
/// Example Usage:
/// ```dart
/// ThemeCubit() // Initializing the cubit with the initial theme mode from theme caching
/// ```
class ThemeCubit extends Cubit<ThemeMode> {
  /// Constructs a ThemeCubit instance.
  ThemeCubit() : super(ThemeCaching.initialTheme());

  /// Sets the theme mode to light.
  ///
  /// Emits the new theme mode.
  void makelight() {
    ThemeCaching.makelight();
    emit(ThemeMode.light);
  }

  /// Sets the theme mode to dark.
  ///
  /// Emits the new theme mode.
  void makeDark() {
    ThemeCaching.makeDark();
    emit(ThemeMode.dark);
  }

  /// Sets the theme mode to system.
  ///
  /// Emits the new theme mode.
  void makeSystem() {
    ThemeCaching.makeSystem();
    emit(ThemeMode.system);
  }
}
