import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/constants/enum/font_enum.dart';
import 'package:traveling_partner/view/pages/home/view-model/i_location_state.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LocationCubit, ILocationState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Reloaded 1 of 1183 libraries in 1,937ms (compile: 40 ms, reload: 293 ms, reassemble: 232 ms).",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                "Reloaded 1 of 1183 libraries in 1,937ms (compile: 40 ms, reload: 293 ms, reassemble: 232 ms).",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          );
        },
      ),
    );
  }
}
