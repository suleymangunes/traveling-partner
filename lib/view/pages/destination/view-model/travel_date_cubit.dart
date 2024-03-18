import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/pages/destination/service/i_travel_date_service.dart';
import 'package:traveling_partner/view/pages/destination/view-model/i_travel_date_state.dart';
import 'package:traveling_partner/view/pages/destination/view-model/travel_date_state.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class TravelDateCubit extends Cubit<ITravelDateState> {
  TravelDateCubit({required this.travelDateService})
      : super(TravelDateInitialState());

  final ITravelDateService travelDateService;

  Future<void> pickTravelDate({
    required LocationModel locationModel,
    required DateTimeRange? dateTimeRange,
  }) async {
    try {
      emit(TravelDateLoadingState());
      await Future.delayed(const Duration(seconds: 3));
      await travelDateService.setTravelDate(
          dateTimeRange: dateTimeRange, locationModel: locationModel);
      emit(TravelDateCompletedState());
    } catch (e) {
      emit(TravelDateErrorState(e));
    }
  }
}
