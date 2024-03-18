import 'package:traveling_partner/product/state-enum/state_enum.dart';

/// Defines the base interface for location-related state classes.
///
/// This abstract class provides a common structure for location states by
/// including a status property, which indicates the current state of a location
/// data fetching or processing operation.
abstract class ILocationState {
  /// Constructs an [ILocationState] with a given [status].
  ///
  /// The [status] parameter is of type [StateEnum], which represents different
  /// possible states such as initial, loading, completed, and error.
  const ILocationState(this.status);

  /// The current status of the location state.
  final StateEnum status;
}
