import 'package:drb_task/core/constants.dart';
import 'package:drb_task/features/assige_trip/presentation/cubits/assigne_trip_cubit/assigne_trip_cubit.dart';

void initAssigeTrip() {
  sl.registerFactory<AssigneTripCubit>(() => AssigneTripCubit());
}
