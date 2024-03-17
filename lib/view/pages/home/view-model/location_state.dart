import 'package:equatable/equatable.dart';
import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/pages/home/view-model/i_location_state.dart';

class LocationInitialState extends ILocationState {
  LocationInitialState() : super(StateEnum.initial);
}

class LocationLoadingState extends ILocationState {
  LocationLoadingState() : super(StateEnum.loading);
}

class LocationCompletedState extends ILocationState with EquatableMixin {
  LocationCompletedState(this.response) : super(StateEnum.completed);
  final List<dynamic> response;

  @override
  List<Object?> get props => [response];
}

class LocationErrorState extends ILocationState {
  final dynamic error;
  LocationErrorState(this.error) : super(StateEnum.error);
}
