// ignore_for_file: lines_longer_than_80_chars

import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/pages/destination/view-model/i_travel_date_state.dart';

/// Represents the initial state of the travel date selection process.
class TravelDateInitialState extends ITravelDateState {
  /// Initializes with a [StateEnum.initial] status.
  TravelDateInitialState() : super(StateEnum.initial);
}

/// Represents the loading state of the travel date selection process.
class TravelDateLoadingState extends ITravelDateState {
  /// Initializes with a [StateEnum.loading] status.
  TravelDateLoadingState() : super(StateEnum.loading);
}

/// Represents the completed state of the travel date selection process.
class TravelDateCompletedState extends ITravelDateState {
  /// Initializes with a [StateEnum.completed] status.
  TravelDateCompletedState() : super(StateEnum.completed);
}

/// Represents the error state of the travel date selection process.
class TravelDateErrorState extends ITravelDateState {
  /// Initializes with a [StateEnum.error] status and accepts an [error] parameter.
  TravelDateErrorState(this.error) : super(StateEnum.error);

  /// The error that occurred, causing the state to be in error.
  final dynamic error;
}
