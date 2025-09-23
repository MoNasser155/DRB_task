import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/core/widgets/custom_details_row.dart';
import 'package:drb_task/features/Vehicles/data/models/vehicle_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class VehicleDetailsBody extends StatelessWidget {
  const VehicleDetailsBody({super.key, required this.vehicleModel});
  final VehicleModel vehicleModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: SvgPicture.asset(vehicleModel.vehicleImage),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // vehicle data
                CustomDetailsRow(
                  title: 'Vehicle Name: ',
                  subTitle: vehicleModel.vehicleName,
                ),
                const Gap(8),
                CustomDetailsRow(
                  title: 'Vehicle ID: ',
                  subTitle: vehicleModel.vehicleId.toString(),
                ),
                const Gap(8),
                CustomDetailsRow(
                  title: 'Vehicle Status: ',
                  subTitle: vehicleModel.vehicleStatus.name,
                ),
                const Gap(8),
                CustomDetailsRow(
                  title: 'Vehicle Type: ',
                  subTitle: vehicleModel.vehicleType.name,
                ),

                // view trip and driver info if found
                ...(vehicleModel.assignedDriver != null
                    ? [
                      Divider(color: ColorHelper.grey350, thickness: 1),
                      Text(
                        'Trip Info',
                        style: context.theme.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(8),
                      CustomDetailsRow(
                        title: 'Assigned Driver: ',
                        subTitle: vehicleModel.assignedDriver ?? 'Not Assigned',
                      ),
                      CustomDetailsRow(
                        title: 'Current Trip: ',
                        subTitle: vehicleModel.currentTrip ?? 'No Trip',
                      ),
                    ]
                    : []),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
