// ignore_for_file: lines_longer_than_80_chars

import 'package:traveling_partner/product/state-enum/state_enum.dart';

/// Represents the state of a travel date with a specific status.
///
/// Parameters:
/// - [status]: The current status of the travel date, represented by [StateEnum]
abstract class ITravelDateState {
  /// Creates an instance of [ITravelDateState] with the given [status].
  ///
  /// This constructor initializes the state of a travel date with a status.
  ///
  /// The [status] parameter indicates the current status of the travel date.
  const ITravelDateState(this.status);

  /// The status of the travel date.
  final StateEnum status;
}
