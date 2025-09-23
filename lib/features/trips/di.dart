import 'package:drb_task/core/constants.dart';
import 'package:drb_task/features/trips/presentation/cubits/trips_cubit/trips_cubit.dart';

void initTrips() {
  sl.registerFactory<TripsCubit>(()=>TripsCubit());
}
