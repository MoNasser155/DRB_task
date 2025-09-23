import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/core/utiles/navigator_helper.dart';
import 'package:drb_task/features/Vehicles/data/models/vehicle_model.dart';
import 'package:drb_task/features/Vehicles/presentation/pages/vehicles_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class VehiclesCardItem extends StatelessWidget {
  const VehiclesCardItem({super.key, required this.vehicleModel});
  final VehicleModel vehicleModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigator.push(
          transitionBuilder: AppNavigator.cupertinoTransition,
          screen: VehicleDetailsScreen(vehicleModel: vehicleModel),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: ColorHelper.grey350,
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SvgPicture.asset(
                vehicleModel.vehicleImage,
                height: 60,
                width: 60,
                colorFilter: const ColorFilter.mode(
                  ColorHelper.mediumPrimary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Gap(8),
            Expanded(
              flex: 8,
              child: Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Vehicle Name: ',
                        style: context.theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        vehicleModel.vehicleName,
                        style: context.theme.textTheme.bodySmall,
                      ),
                      Gap(4),
                      Text(
                        '#${vehicleModel.vehicleId}',
                        style: context.theme.textTheme.bodySmall!.copyWith(
                          color: ColorHelper.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        'Type: ',
                        style: context.theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        vehicleModel.vehicleType.name,
                        style: context.theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Status: ',
                        style: context.theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        vehicleModel.vehicleStatus.name,
                        style: context.theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
