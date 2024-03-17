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
              const Text(
                "Reloaded 1 of 1183 libraries in 1,937ms (compile: 40 ms, reload: 293 ms, reassemble: 232 ms).",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              Text(
                "Reloaded 1 of 1183 libraries in 1,937ms (compile: 40 ms, reload: 293 ms, reassemble: 232 ms).",
                style: TextStyle(
                  fontSize: 30,
                  // fontWeight: FontWeight.bold,
                  fontFamily: FontEnum.cabinRegular.value,
                  // color: Colors.black87,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
