import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/Drivers/data/models/driver_model.dart';
import 'package:drb_task/features/Drivers/presentation/cubits/drivers_cubit/drivers_cubit.dart';
import 'package:drb_task/features/Drivers/presentation/widgets/driver_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DriversBody extends StatelessWidget {
  const DriversBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          sliver: BlocBuilder<DriversCubit, DriversState>(
            builder: (context, state) {
              final driversLength =
                  state.status == StateStatus.loading
                      ? 12
                      : state.driversList.length;
              return SliverList.separated(
                itemBuilder: (context, index) {
                  final driver =
                      state.status == StateStatus.loading
                          ? DriverModel.skeleton()
                          : state.driversList[index];
                  return Skeletonizer(
                    enabled: state.status == StateStatus.loading,
                    child: DriverCardItem(driverModel: driver),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    indent: 24,
                    endIndent: 24,
                    color: ColorHelper.grey300,
                  );
                },
                itemCount: driversLength,
              );
            },
          ),
        ),
      ],
    );
  }
}
