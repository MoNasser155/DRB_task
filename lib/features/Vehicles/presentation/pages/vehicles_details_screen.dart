import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/features/Vehicles/data/models/vehicle_model.dart';
import 'package:drb_task/features/Vehicles/presentation/widgets/vehicle_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VehicleDetailsScreen extends StatelessWidget {
  const VehicleDetailsScreen({super.key , required this.vehicleModel});
final VehicleModel vehicleModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vehicle Details',
          style: context.theme.textTheme.titleLarge!.copyWith(
            color: ColorHelper.white,
          ),
        ),
        backgroundColor: ColorHelper.primary,
        centerTitle: true,
        automaticallyImplyLeading: true,
        surfaceTintColor: ColorHelper.transparent,
        shadowColor: ColorHelper.grey300,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorHelper.primary,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: VehicleDetailsBody(vehicleModel: vehicleModel,),
    );
  }
}
