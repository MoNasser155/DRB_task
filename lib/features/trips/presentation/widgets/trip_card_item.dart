import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/core/utiles/navigator_helper.dart';
import 'package:drb_task/core/widgets/custom_details_row.dart';
import 'package:drb_task/features/trips/data/models/trip_model.dart';
import 'package:drb_task/features/trips/presentation/pages/trip_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TripCardItem extends StatelessWidget {
  const TripCardItem({super.key, required this.tripModel});
  final TripModel tripModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigator.push(
          transitionBuilder: AppNavigator.cupertinoTransition,
          screen: TripDetailsScreen( tripModel: tripModel,),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: ColorHelper.grey300,
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomDetailsRow(
                    title: 'Driver Name: ',
                    subTitle: tripModel.assignedDriver,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: tripModel.tripProgress.color.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    tripModel.tripProgress.name,
                    style: context.theme.textTheme.bodyMedium!.copyWith(
                      color: tripModel.tripProgress.color,
                    ),
                  ),
                ),
              ],
            ),
            CustomDetailsRow(
              title: 'Vehicle Name: ',
              subTitle: tripModel.assignedVehicle,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomDetailsRow(
                    title: 'Pickup: ',
                    subTitle: tripModel.pickup,
                  ),
                ),
                Gap(4),
                Expanded(
                  child: CustomDetailsRow(
                    title: 'Drop Off: ',
                    subTitle: tripModel.dropOff,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
