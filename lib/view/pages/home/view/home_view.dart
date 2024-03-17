import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/view/pages/home/view-model/i_location_state.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LocationCubit, ILocationState>(
        builder: (context, state) {
          return const Text("oldu");
        },
      ),
    );
  }
}
