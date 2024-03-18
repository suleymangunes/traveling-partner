import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/init/cache/theme_caching.dart';

class RadioCubit extends Cubit<String> {
  RadioCubit() : super(ThemeCaching.initialRadio());

  void changeValue(String radio) {
    emit(radio);
  }
}
