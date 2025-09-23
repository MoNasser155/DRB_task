import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/features/Drivers/data/models/driver_model.dart';
import 'package:drb_task/features/Drivers/presentation/widgets/driver_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DriverDetailsScreen extends StatelessWidget {
  const DriverDetailsScreen({super.key, required this.driverModel});
  final DriverModel driverModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Driver Details',
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
      body: DriverDetailsBody(driverModel: driverModel,),
    );
  }
}
