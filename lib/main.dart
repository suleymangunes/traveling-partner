import 'package:traveling_partner/traveling_partner_app.dart';

/// The entry point of the Traveling Partner application.
///
/// Initializes and runs the application by calling the `run` method
/// of the `TravelingPartnerApp` class. This setup ensures that all necessary
/// initialization processes are completed before the application UI
/// is presented to the user.
Future<void> main() async {
  await TravelingPartnerApp().run();
}
