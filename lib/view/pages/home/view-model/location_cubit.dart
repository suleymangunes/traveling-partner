import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/pages/home/service/location_repository.dart';
import 'package:traveling_partner/view/pages/home/view-model/i_location_state.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_state.dart';

class LocationCubit extends Cubit<ILocationState> {
  LocationCubit({required this.locationService})
      : super(LocationInitialState());

  final LocationRepository locationService;

  Future<void> getLocations() async {
    try {
      emit(LocationLoadingState());
      final response = await locationService.fetchLocations();
      emit(LocationCompletedState(response));
    } catch (e) {
      emit(LocationErrorState(e));
    }
  }
}
