import 'package:drb_task/core/appassets/images.dart';
import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/core/widgets/custom_details_row.dart';
import 'package:drb_task/features/trips/data/models/trip_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TripDetailsBody extends StatelessWidget {
  const TripDetailsBody({super.key, required this.tripModel});
  final TripModel tripModel;
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
                child: Image.asset(
                  PngImages.map,
                  fit: BoxFit.cover,
                  height: 350,
                  width: double.infinity,
                ),
              ),
              Gap(12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDetailsRow(
                      title: 'Driver Name: ',
                      subTitle: tripModel.assignedDriver,
                    ),
                    Gap(8),
                    CustomDetailsRow(
                      title: 'Assigned Vehicle: ',
                      subTitle: tripModel.assignedVehicle,
                    ),
                    Gap(8),
                    CustomDetailsRow(
                      title: 'Trip State: ',
                      subTitle: tripModel.tripProgress.name,
                    ),
                    Divider(
                      indent: 24,
                      endIndent: 24,
                      color: ColorHelper.grey300,
                    ),
                    Text(
                      'Location Details: ',
                      style: context.theme.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(8),
                    CustomDetailsRow(
                      title: 'Pickup Location: ',
                      subTitle: tripModel.pickup,
                    ),
                    Gap(4),
                    CustomDetailsRow(
                      title: 'Drop Location: ',
                      subTitle: tripModel.dropOff,
                    ),
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
