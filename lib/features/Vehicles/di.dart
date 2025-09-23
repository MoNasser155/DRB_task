import 'package:drb_task/core/constants.dart';
import 'package:drb_task/features/Vehicles/presentation/cubits/vehicles_cubit/vehicles_cubit.dart';

void initVehicles() {
  //cubits
  sl.registerFactory<VehiclesCubit>(()=> VehiclesCubit());
}
