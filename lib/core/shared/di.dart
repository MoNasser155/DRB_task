import 'package:drb_task/core/constants.dart';
import 'package:drb_task/core/shared/cubits/main_view_cubit/main_view_cubit.dart';
import 'package:drb_task/features/Drivers/di.dart';
import 'package:drb_task/features/Vehicles/di.dart';

void initServiceLocator() {
  initShared();
  initVehicles();
  initDrivers();
}

void initShared() {
  sl.registerFactory<MainViewCubit>(() => MainViewCubit());
}
