// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/pages/destination/service/i_travel_date_service.dart';
import 'package:traveling_partner/view/pages/destination/view-model/i_travel_date_state.dart';
import 'package:traveling_partner/view/pages/destination/view-model/travel_date_state.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// Manages the state for picking travel dates based on user selection.
///
/// Utilizes the ItravelDateService to set the selected travel dates and handle
/// state transitions between initial, loading, completed, and error states
class TravelDateCubit extends Cubit<ITravelDateState> {
  /// Creates an instance of [TravelDateCubit] with a required [travelDateService].
  ///
  /// Initializes with [TravelDateInitialState] as the initial state.
  TravelDateCubit({required this.travelDateService})
      : super(TravelDateInitialState());

  /// The service used for setting travel dates.
  final ITravelDateService travelDateService;

  /// Picks a travel date range for a given location.
  Future<void> pickTravelDate({
    required LocationModel locationModel,
    required DateTimeRange? dateTimeRange,
  }) async {
    try {
      emit(TravelDateLoadingState());
      await Future<void>.delayed(const Duration(seconds: 3));
      await travelDateService.setTravelDate(
        dateTimeRange: dateTimeRange,
        locationModel: locationModel,
      );
      emit(TravelDateCompletedState());
    } catch (e) {
      emit(TravelDateErrorState(e));
    }
  }
}
