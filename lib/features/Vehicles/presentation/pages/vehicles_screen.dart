import 'package:drb_task/core/constants.dart';
import 'package:drb_task/core/widgets/custom_appbar.dart';
import 'package:drb_task/features/Vehicles/presentation/cubits/vehicles_cubit/vehicles_cubit.dart';
import 'package:drb_task/features/Vehicles/presentation/widgets/vehicles_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VehiclesScreen extends StatelessWidget {
  const VehiclesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<VehiclesCubit>()..fetchData(),
      child: Scaffold(
       appBar: CustomAppbar.customMainViewAppBar(),
        body: VehiclesBody(),
      ),
    );
  }
}
