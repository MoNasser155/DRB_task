import 'package:cached_network_image/cached_network_image.dart';
import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/features/Drivers/data/models/driver_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DriverDetailsBody extends StatelessWidget {
  const DriverDetailsBody({super.key, required this.driverModel});
  final DriverModel driverModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: CachedNetworkImage(
                  imageUrl: driverModel.driverImage,
                  fit: BoxFit.cover,
                  height: 350,
                  width: double.infinity,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Gap(12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    DriverDetailsRow(
                      title: 'Driver Name: ',
                      subTitle: driverModel.driverName,
                    ),
                    Gap(8),
                    DriverDetailsRow(
                      title: 'Licence Number: ',
                      subTitle: driverModel.licenceNumber.toString(),
                    ),
                    Gap(8),
                    DriverDetailsRow(
                      title: 'Driver State: ',
                      subTitle: driverModel.driverState.name,
                    ),
                    ...(driverModel.assignedVehicle != null
                        ? [
                          Gap(8),
                          DriverDetailsRow(
                            title: 'Assigned Vehicle: ',
                            subTitle:
                                driverModel.assignedVehicle ?? 'No Vehicle',
                          ),
                          Gap(8),
                          DriverDetailsRow(
                            title: 'Current Trip: ',
                            subTitle: driverModel.curruntTrip ?? 'No Trip',
                          ),
                        ]
                        : []),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DriverDetailsRow extends StatelessWidget {
  const DriverDetailsRow({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: context.theme.textTheme.bodyLarge!.copyWith(
            color: ColorHelper.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subTitle,
          style: context.theme.textTheme.bodyMedium!.copyWith(
            color: ColorHelper.primary,
          ),
        ),
      ],
    );
  }
}
