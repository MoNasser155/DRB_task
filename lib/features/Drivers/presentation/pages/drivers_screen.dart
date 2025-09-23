import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/constants.dart';
import 'package:drb_task/features/Drivers/presentation/cubits/drivers_cubit/drivers_cubit.dart';
import 'package:drb_task/features/Drivers/presentation/widgets/drivers_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriversScreen extends StatelessWidget {
  const DriversScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DriversCubit>()..fetchData(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: ColorHelper.white,
          ),
        ),
        body: DriversBody(),
      ),
    );
  }
}
