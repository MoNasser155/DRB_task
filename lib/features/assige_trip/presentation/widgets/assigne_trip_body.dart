import 'package:drb_task/core/widgets/custom_textfield.dart';
import 'package:drb_task/core/widgets/expanded_drop_down.dart';
import 'package:drb_task/features/Drivers/data/models/driver_model.dart';
import 'package:drb_task/features/Vehicles/data/models/vehicle_model.dart';
import 'package:drb_task/features/assige_trip/presentation/cubits/assigne_trip_cubit/assigne_trip_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AssigneTripBody extends StatelessWidget {
  const AssigneTripBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                BlocBuilder<AssigneTripCubit, AssigneTripState>(
                  buildWhen: (previous, current) {
                    return previous.driversList.length !=
                        current.driversList.length;
                  },
                  builder: (context, state) {
                    final List<DriverModel> driversList = state.driversList;
                    return ExpandedDropdown<DriverModel>(
                      hint: 'Driver',
                      items: driversList,
                      itemLabelBuilder: (item) => item.driverName,
                      onChanged: (value) {},
                    );
                  },
                ),
                Gap(12),
                BlocBuilder<AssigneTripCubit, AssigneTripState>(
                  buildWhen: (previous, current) {
                    return previous.vehiclesList.length !=
                        current.vehiclesList.length;
                  },
                  builder: (context, state) {
                    final List<VehicleModel> vehiclesList = state.vehiclesList;
                    return ExpandedDropdown<VehicleModel>(
                      hint: 'Vehicle',
                      items: vehiclesList,
                      itemLabelBuilder: (item) => item.vehicleName,
                      onChanged: (value) {},
                    );
                  },
                ),
                Gap(12),
                BlocBuilder<AssigneTripCubit, AssigneTripState>(
                  builder: (context, state) {
                    final cubit = context.read<AssigneTripCubit>();
                    return AppCustomTextField(
                      hint: 'Pickup location',
                      maxlines: 1,
                      controller: cubit.pickupController,
                    );
                  },
                ),
                Gap(12),
                BlocBuilder<AssigneTripCubit, AssigneTripState>(
                  builder: (context, state) {
                    final cubit = context.read<AssigneTripCubit>();

                    return AppCustomTextField(
                      hint: 'Drop off location',
                      maxlines: 1,
                      controller: cubit.dropOffController,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
