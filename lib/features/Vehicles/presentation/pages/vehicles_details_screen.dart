import 'package:drb_task/core/widgets/custom_appbar.dart';
import 'package:drb_task/features/Vehicles/data/models/vehicle_model.dart';
import 'package:drb_task/features/Vehicles/presentation/widgets/vehicle_details_body.dart';
import 'package:flutter/material.dart';

class VehicleDetailsScreen extends StatelessWidget {
  const VehicleDetailsScreen({super.key, required this.vehicleModel});
  final VehicleModel vehicleModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.customDetailsAppBar(context:context,title: 'Vehicle Details'),
      body: VehicleDetailsBody(vehicleModel: vehicleModel),
    );
  }
}
