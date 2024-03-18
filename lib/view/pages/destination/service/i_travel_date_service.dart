// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// An interface for setting travel dates.
// ignore: one_member_abstracts
abstract class ITravelDateService {
  /// Sets the travel date range for a location.
  ///
  /// Parameters:
  ///   - locationModel: The model containing information about the travel location.
  ///   - dateTimeRange: The travel date range (optional).
  Future<void> setTravelDate({
    required LocationModel locationModel,
    required DateTimeRange? dateTimeRange,
  });
}
