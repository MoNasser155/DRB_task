import 'package:cached_network_image/cached_network_image.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/core/utiles/navigator_helper.dart';
import 'package:drb_task/features/Drivers/data/models/driver_model.dart';
import 'package:drb_task/features/Drivers/presentation/pages/driver_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DriverCardItem extends StatelessWidget {
  const DriverCardItem({super.key, required this.driverModel});

  final DriverModel driverModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigator.push(
          transitionBuilder: AppNavigator.cupertinoTransition,
          screen: DriverDetailsScreen(driverModel: driverModel,),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),

        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: driverModel.driverImage,
                  width: 60,
                  height: 60,
                  errorWidget: (context, url, error) => const Icon(Icons.error),

                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(12),
            Expanded(
              flex: 8,
              child: Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Driver Name: ',
                        style: context.theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        driverModel.driverName,
                        style: context.theme.textTheme.bodySmall,
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        'Licence No: ',
                        style: context.theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        driverModel.licenceNumber.toString(),
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
                        driverModel.driverState.title,
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
