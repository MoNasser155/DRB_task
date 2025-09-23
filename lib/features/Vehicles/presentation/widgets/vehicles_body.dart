import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/Vehicles/data/models/vehicle_model.dart';
import 'package:drb_task/features/Vehicles/presentation/cubits/vehicles_cubit/vehicles_cubit.dart';
import 'package:drb_task/features/Vehicles/presentation/widgets/vehicles_car_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class VehiclesBody extends StatelessWidget {
  const VehiclesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            sliver: BlocBuilder<VehiclesCubit, VehiclesState>(
              buildWhen:
                  (previous, current) =>
                      previous.vehiclesList != current.vehiclesList,
              builder: (context, state) {
                final vehiclesLength =
                    state.status == StateStatus.loading
                        ? 12
                        : state.vehiclesList.length;
                return SliverList.separated(
                  itemBuilder: (context, index) {
                    final vehicle =
                        state.status == StateStatus.loading
                            ? VehicleModel.skeleton()
                            : state.vehiclesList[index];

                    return Skeletonizer(
                      enabled: state.status == StateStatus.loading,
                      child: VehiclesCardItem(vehicleModel: vehicle),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Gap(12);
                  },
                  itemCount: vehiclesLength,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
