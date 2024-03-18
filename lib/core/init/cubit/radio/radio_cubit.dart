import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/init/cache/theme_caching.dart';

/// **RadioCubit Class**
///
/// A Cubit class for managing radio button states.
///
/// Example Usage:
/// ```dart
/// RadioCubit() // Initializing the cubit with the initial radio value from theme caching
/// ```
class RadioCubit extends Cubit<String> {
  /// Constructs a RadioCubit instance.
  RadioCubit() : super(ThemeCaching.initialRadio());

  /// Changes the value of the radio button.
  ///
  /// Emits the new radio value.
  void changeValue(String radio) {
    emit(radio);
  }
}
