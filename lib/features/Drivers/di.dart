import 'package:drb_task/core/constants.dart';
import 'package:drb_task/features/Drivers/presentation/cubits/drivers_cubit/drivers_cubit.dart';

void initDrivers() {
  sl.registerFactory<DriversCubit>(() => DriversCubit());
}
