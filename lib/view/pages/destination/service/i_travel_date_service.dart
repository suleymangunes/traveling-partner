import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

abstract class ITravelDateService {
  Future<void> setTravelDate({
    required LocationModel locationModel,
    required DateTimeRange? dateTimeRange,
  });
}
