import 'package:drb_task/core/widgets/custom_appbar.dart';
import 'package:drb_task/features/Drivers/data/models/driver_model.dart';
import 'package:drb_task/features/Drivers/presentation/widgets/driver_details_body.dart';
import 'package:flutter/material.dart';

class DriverDetailsScreen extends StatelessWidget {
  const DriverDetailsScreen({super.key, required this.driverModel});
  final DriverModel driverModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.customDetailsAppBar(
        context: context,
        title: 'Driver Details',
      ),
      body: DriverDetailsBody(driverModel: driverModel),
    );
  }
}
