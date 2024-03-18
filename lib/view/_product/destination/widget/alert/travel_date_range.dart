import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/product/state-enum/state_enum.dart';
import 'package:traveling_partner/view/_product/destination/widget/button/destination_completed_button.dart';
import 'package:traveling_partner/view/_product/destination/widget/button/destination_loading_button.dart';
import 'package:traveling_partner/view/_product/destination/widget/button/destionation_error_button.dart';
import 'package:traveling_partner/view/_product/destination/widget/text/travel_date_pick_title.dart';
import 'package:traveling_partner/view/pages/destination/view-model/getit_travel_date_instance.dart';
import 'package:traveling_partner/view/pages/destination/view-model/i_travel_date_state.dart';
import 'package:traveling_partner/view/pages/destination/view-model/travel_date_cubit.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// A dialog widget for selecting travel dates.
class TravelDateRange extends StatefulWidget {
  /// Constructs a [TravelDateRange] widget.
  const TravelDateRange({
    required this.locationModel,
    super.key,
  });

  /// The location model associated with the travel dates.
  final LocationModel locationModel;

  @override
  State<TravelDateRange> createState() => _TravelDateRangeState();
}

class _TravelDateRangeState extends State<TravelDateRange>
    with GetItTravelDateInstance {
  DateTimeRange? dateTimeRange;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      title: const TravelDatePickTitle(),
      content: SizedBox(
        height: context.datePickerHeiht,
        width: context.datePickerWidth,
        child: RangeDatePicker(
          maxDate: DateTime.now().add(
            const Duration(days: 10000),
          ),
          minDate: DateTime.now(),
          onRangeSelected: (value) {
            setState(() {
              dateTimeRange = value;
            });
          },
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        BlocProvider(
          create: (context) => TravelDateCubit(
            travelDateService: travelDateService(),
          ),
          child: BlocBuilder<TravelDateCubit, ITravelDateState>(
            builder: (context, state) {
              switch (state.status) {
                case StateEnum.initial:
                  return _destinationInitialButton(context);
                case StateEnum.loading:
                  return const DestinationLoadingButton();
                case StateEnum.completed:
                  return const DestinationCompletedButton();
                case StateEnum.error:
                  return const DestinationErrorButton();
              }
            },
          ),
        ),
      ],
    );
  }

  ElevatedButton _destinationInitialButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
        padding: context.buttonPadding,
        minimumSize: context.alertButtonSize,
      ),
      onPressed: () {
        context.read<TravelDateCubit>().pickTravelDate(
              dateTimeRange: dateTimeRange,
              locationModel: widget.locationModel,
            );
      },
      child: Text(
        LocaleKeys.buttonRegister.tr(),
        style: context.titleLargeSpacingBg,
      ),
    );
  }
}
