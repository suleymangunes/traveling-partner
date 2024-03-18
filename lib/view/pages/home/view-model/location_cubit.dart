import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/pages/home/service/location_repository.dart';
import 'package:traveling_partner/view/pages/home/view-model/i_location_state.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_state.dart';

/// Handles state management for location data fetching.
class LocationCubit extends Cubit<ILocationState> {
  /// Constructs the cubit with an initial state and a location service.
  LocationCubit({required this.locationService})
      : super(LocationInitialState());

  /// Location service for fetching data.
  final LocationRepository locationService;

  /// Initiates location data fetching and state updates.

  Future<void> getLocations() async {
    try {
      emit(LocationLoadingState());
      await Future<void>.delayed(const Duration(seconds: 3));
      final response = await locationService.fetchLocations();
      emit(LocationCompletedState(response));
    } catch (e) {
      emit(LocationErrorState(e));
    }
  }
}
