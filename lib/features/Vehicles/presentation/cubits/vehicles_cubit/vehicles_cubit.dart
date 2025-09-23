import 'package:drb_task/core/enums/vehicles/vehicles_status_enum.dart';
import 'package:drb_task/core/enums/vehicles/vehicles_type_enum.dart';
import 'package:drb_task/core/shared/state_status.dart';
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
    final List<VehicleModel> updatesVehiclesList = [
      VehicleModel(
        vehicleId: 155,
        vehicleName: VehiclesType.van.name,
        vehicleImage: VehiclesType.van.image,
        vehicleStatus: VehiclesStatus.available,
        vehicleType: VehiclesType.van,
        assignedDriver: null,
        currentTrip: null,
      ),
      VehicleModel(
        vehicleId: 187,
        vehicleName: VehiclesType.bike.name,
        vehicleImage: VehiclesType.bike.image,
        vehicleStatus: VehiclesStatus.available,
        vehicleType: VehiclesType.bike,
        assignedDriver: null,
        currentTrip: null,
      ),
      VehicleModel(
        vehicleId: 201,
        vehicleName: VehiclesType.truck.name,
        vehicleImage: VehiclesType.truck.image,
        vehicleStatus: VehiclesStatus.assigned,
        vehicleType: VehiclesType.truck,
        assignedDriver: 'Mohammed',
        currentTrip: 'Luxor to Aswan',
      ),
      VehicleModel(
        vehicleId: 95,
        vehicleName: VehiclesType.bike.name,
        vehicleImage: VehiclesType.bike.image,
        vehicleStatus: VehiclesStatus.assigned,
        vehicleType: VehiclesType.bike,
        assignedDriver: 'Ahmed',
        currentTrip: 'Maadi to Nasr City',
      ),
      VehicleModel(
        vehicleId: 163,
        vehicleName: VehiclesType.van.name,
        vehicleImage: VehiclesType.van.image,
        vehicleStatus: VehiclesStatus.assigned,
        vehicleType: VehiclesType.van,
        assignedDriver: 'Gamal',
        currentTrip: 'Giza to Cairo',
      ),
      VehicleModel(
        vehicleId: 140,
        vehicleName: VehiclesType.bike.name,
        vehicleImage: VehiclesType.bike.image,
        vehicleStatus: VehiclesStatus.available,
        vehicleType: VehiclesType.bike,
        assignedDriver: null,
        currentTrip: null,
      ),
      VehicleModel(
        vehicleId: 36,
        vehicleName: VehiclesType.truck.name,
        vehicleImage: VehiclesType.truck.image,
        vehicleStatus: VehiclesStatus.available,
        vehicleType: VehiclesType.truck,
        assignedDriver: null,
        currentTrip: null,
      ),
      VehicleModel(
        vehicleId: 12,
        vehicleName: VehiclesType.truck.name,
        vehicleImage: VehiclesType.truck.image,
        vehicleStatus: VehiclesStatus.assigned,
        vehicleType: VehiclesType.truck,
        assignedDriver: 'Ali',
        currentTrip: 'Alexandria to tanta',
      ),
    ];
    emit(
      state.copyWith(
        status: StateStatus.success,
        vehiclesList: updatesVehiclesList,
      ),
    );
  }
}
