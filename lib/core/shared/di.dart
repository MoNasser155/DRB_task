import 'package:drb_task/core/constants.dart';
import 'package:drb_task/core/shared/cubits/main_view_cubit/main_view_cubit.dart';
import 'package:drb_task/features/Vehicles/di.dart';

void initServiceLocator() {
  initShared();
  initVehicles();
}

void initShared() {
  sl.registerFactory<MainViewCubit>(() => MainViewCubit());
}
