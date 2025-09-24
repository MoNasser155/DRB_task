import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/Vehicles/data/datasources/mock_data.dart';
import 'package:drb_task/features/Vehicles/data/models/vehicle_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'vehicles_state.dart';

class VehiclesCubit extends Cubit<VehiclesState> {
  VehiclesCubit() : super(VehiclesState.initial());

  Future<void> fetchData() async {
    emit(state.copyWith(status: StateStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    Future.wait([fetchVehicles()]);
    emit(state.copyWith(status: StateStatus.success));
  }

  Future<void> fetchVehicles() async {
    emit(state.copyWith(status: StateStatus.loading));
    // mockData
    final List<VehicleModel> updatesVehiclesList = MockVehiclesData.vehicles;
    emit(
      state.copyWith(
        status: StateStatus.success,
        vehiclesList: updatesVehiclesList,
      ),
    );
  }
}
