import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/trips/data/models/trip_model.dart';
import 'package:drb_task/features/trips/presentation/cubits/trips_cubit/trips_cubit.dart';
import 'package:drb_task/features/trips/presentation/widgets/trip_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TripsBody extends StatelessWidget {
  const TripsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          sliver: BlocBuilder<TripsCubit, TripsState>(
            builder: (context, state) {
              final tripsLength =
                  state.status == StateStatus.loading
                      ? 12
                      : state.tripsList.length;
              return SliverList.separated(
                itemBuilder: (context, index) {
                  final trip =
                      state.status == StateStatus.loading
                          ? TripModel.skeleton()
                          : state.tripsList[index];
                  return Skeletonizer(
                    enabled: state.status == StateStatus.loading,
                    child: TripCardItem(tripModel: trip),
                  );
                },
                separatorBuilder: (context, index) {
                  return Gap(12);
                },
                itemCount: tripsLength,
              );
            },
          ),
        ),
      ],
    );
  }
}
