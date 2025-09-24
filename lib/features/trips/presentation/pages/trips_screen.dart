import 'package:drb_task/core/appassets/icons.dart';
import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/constants.dart';
import 'package:drb_task/core/utiles/navigator_helper.dart';
import 'package:drb_task/core/widgets/custom_appbar.dart';
import 'package:drb_task/features/assige_trip/presentation/pages/assigne_trip_screen.dart';
import 'package:drb_task/features/trips/presentation/cubits/trips_cubit/trips_cubit.dart';
import 'package:drb_task/features/trips/presentation/widgets/trips_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TripsCubit>()..fetchData(),

      child: Scaffold(
        appBar: CustomAppbar.customMainViewAppBar(),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                AppNavigator.push(
                  transitionBuilder: AppNavigator.cupertinoTransition,
                  screen: const AssigneTripScreen(),
                );
              },
              child: SvgPicture.asset(
                AppIcons.assigneTrip,
                height: 24,
                width: 24,
                colorFilter: const ColorFilter.mode(
                  ColorHelper.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const Gap(64),
          ],
        ),
        body: TripsBody(),
      ),
    );
  }
}
