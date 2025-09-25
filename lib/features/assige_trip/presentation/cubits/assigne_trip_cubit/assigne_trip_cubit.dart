import 'package:drb_task/core/enums/drivers/driver_state_enum.dart';
import 'package:drb_task/core/enums/vehicles/vehicles_status_enum.dart';
import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/Drivers/data/datasources/mock_data.dart';
import 'package:drb_task/features/Drivers/data/models/driver_model.dart';
import 'package:drb_task/features/Vehicles/data/datasources/mock_data.dart';
import 'package:drb_task/features/Vehicles/data/models/vehicle_model.dart';
import 'package:drb_task/features/assige_trip/data/models/assigne_trip_params.dart';
import 'package:drb_task/features/assige_trip/presentation/cubits/assigne_trip_cubit/assigne_trip_mixin.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'assigne_trip_state.dart';

class AssigneTripCubit extends Cubit<AssigneTripState> with AssigneTripMixin {
  AssigneTripCubit() : super(AssigneTripState.initial());

  Future<void> fetchData() async {
    emit(state.copyWith(status: StateStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    Future.wait([_fetchDrivers(), _fetchVehicles()]);
    emit(state.copyWith(status: StateStatus.success));
  }

  Future<void> _fetchDrivers() async {
    emit(state.copyWith(status: StateStatus.loading));
    //get mock data
    final List<DriverModel> driversList = MockDriversData.drivers;
    //fiter data (only available drivers)
    final availableDrivers =
        driversList
            .where((driver) => driver.driverState == DriverState.available)
            .toList();
    emit(state.copyWith(driversList: availableDrivers, status: StateStatus.success));
  }

  Future<void> _fetchVehicles() async {
    emit(state.copyWith(status: StateStatus.loading));
    //get mock data
    final List<VehicleModel> vehiclesList = MockVehiclesData.vehicles;
    //fiter data (only available vehicles)
    final availableVehicles = vehiclesList
        .where((vehicle) => vehicle.vehicleStatus == VehiclesStatus.available)
        .toList();
    emit(
      state.copyWith(vehiclesList: availableVehicles, status: StateStatus.success),
    );
  }

  void updatedSelectedDriver(DriverModel driver) {
    emit(state.copyWith(selectedDriver: driver));
  }

  void updatedSelectedVehicle(VehicleModel vehicle) {
    emit(state.copyWith(selectedVehicle: vehicle));
  }

  AssigneTripParams setParams() {
    return AssigneTripParams(
      driverId: state.selectedDriver.driverId.toString(),
      vehicleId: state.selectedVehicle.vehicleId.toString(),
      pickupLocation: pickupController.text,
      dropOffLocation: dropOffController.text,
    );
  }

  Future<void> assignTrip() async {
    emit(state.copyWith(status: StateStatus.loading));
    //here we will handle this api call to sen the data to the server
    // like this
    // final result = await assigneTripUseCAse.call(setParams());    here we pass our trip params to the use case
    // then handle the result
    // result.when((sucess){
    // show success message and then navigate to the next screen (if any)
    //emit(state.copyWith(status: StateStatus.success));
    // },
    //(fail){
    // show erroe message here
    //emit(state.copyWith(status: StateStatus.error, errorMessage: fail.message));
    // });

    emit(state.copyWith(status: StateStatus.success));
  }
}
