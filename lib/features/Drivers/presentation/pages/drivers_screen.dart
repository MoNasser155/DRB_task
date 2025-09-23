import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/features/Drivers/presentation/widgets/drivers_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DriversScreen extends StatelessWidget {
  const DriversScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          toolbarHeight: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: ColorHelper.white,
          ),
        ),
        body: DriversBody()
    );
  }
}