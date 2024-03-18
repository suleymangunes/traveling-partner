import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/pages/destination/view-model/i_travel_date_state.dart';

class TravelDateInitialState extends ITravelDateState {
  TravelDateInitialState() : super(StateEnum.initial);
}

class TravelDateLoadingState extends ITravelDateState {
  TravelDateLoadingState() : super(StateEnum.loading);
}

class TravelDateCompletedState extends ITravelDateState {
  TravelDateCompletedState() : super(StateEnum.completed);
}

class TravelDateErrorState extends ITravelDateState {
  final dynamic error;
  TravelDateErrorState(this.error) : super(StateEnum.error);
}
