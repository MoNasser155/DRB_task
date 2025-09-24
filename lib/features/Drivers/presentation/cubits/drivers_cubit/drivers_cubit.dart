import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/Drivers/data/datasources/mock_data.dart';
import 'package:drb_task/features/Drivers/data/models/driver_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'drivers_state.dart';

class DriversCubit extends Cubit<DriversState> {
  DriversCubit() : super(DriversState.initial());

  Future<void> fetchData() async {
    emit(state.copyWith(status: StateStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    Future.wait([_fetchDrivers()]);
    emit(state.copyWith(status: StateStatus.success));
  }

  Future<void> _fetchDrivers() async {
    emit(state.copyWith(status: StateStatus.loading));
    final List<DriverModel> driversList = MockDriversData.drivers;
    emit(state.copyWith(driversList: driversList, status: StateStatus.success));
  }
}
