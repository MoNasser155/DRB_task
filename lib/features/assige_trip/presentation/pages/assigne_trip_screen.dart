import 'package:drb_task/core/constants.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/core/widgets/custom_appbar.dart';
import 'package:drb_task/core/widgets/custom_button.dart';
import 'package:drb_task/features/assige_trip/presentation/cubits/assigne_trip_cubit/assigne_trip_cubit.dart';
import 'package:drb_task/features/assige_trip/presentation/widgets/assigne_trip_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssigneTripScreen extends StatelessWidget {
  const AssigneTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AssigneTripCubit>()..fetchData(),
      child: Scaffold(
        appBar: CustomAppbar.customDetailsAppBar(
          context: context,
          title: 'Assign Trip',
        ),
        bottomSheet: BlocBuilder<AssigneTripCubit, AssigneTripState>(
          builder: (context, state) {
            final cubit = context.read<AssigneTripCubit>();
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: CustomButton(
                buttonChild: Text(
                  "Assign Trip",
                  style: context.theme.textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  cubit.assignTrip();
                },
              ),
            );
          },
        ),
        body: AssigneTripBody(),
      ),
    );
  }
}
