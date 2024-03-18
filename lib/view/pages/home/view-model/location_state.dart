// ignore_for_file: lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/pages/home/view-model/i_location_state.dart';

/// Initial state before fetching location data.
class LocationInitialState extends ILocationState {
  /// Sets the state to [StateEnum.initial].
  LocationInitialState() : super(StateEnum.initial);
}

/// State during the fetching of location data.
class LocationLoadingState extends ILocationState {
  /// Sets the state to [StateEnum.loading].
  LocationLoadingState() : super(StateEnum.loading);
}

/// State after successfully fetching location data.
class LocationCompletedState extends ILocationState with EquatableMixin {
  /// Holds the fetched location data and sets the state to [StateEnum.completed].
  LocationCompletedState(this.response) : super(StateEnum.completed);

  /// location response.
  final List<dynamic> response;

  @override
  List<Object?> get props => [response];
}

/// State when an error occurs during fetching of location data.
class LocationErrorState extends ILocationState {
  /// Holds the error details and sets the state to [StateEnum.error].
  LocationErrorState(this.error) : super(StateEnum.error);

  /// Error handling.
  final dynamic error;
}
