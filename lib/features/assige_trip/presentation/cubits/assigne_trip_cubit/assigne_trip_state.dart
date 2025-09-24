part of 'assigne_trip_cubit.dart';

class AssigneTripState extends Equatable {
  final StateStatus status;
  final List<DriverModel> driversList;
  final List<VehicleModel> vehiclesList;

  // send assigne trip params
  final DriverModel selectedDriver;
  final VehicleModel selectedVehicle;

  const AssigneTripState({
    required this.status,
    required this.driversList,
    required this.vehiclesList,
    required this.selectedDriver ,
    required this.selectedVehicle ,
  });

  AssigneTripState copyWith({
    StateStatus? status,
    List<DriverModel>? driversList,
    List<VehicleModel>? vehiclesList,
    DriverModel? selectedDriver,
    VehicleModel? selectedVehicle
  }) {
    return AssigneTripState(
      status: status ?? this.status,
      driversList: driversList ?? this.driversList,
      vehiclesList: vehiclesList ?? this.vehiclesList,
      selectedDriver: selectedDriver ?? this.selectedDriver,
      selectedVehicle: selectedVehicle ?? this.selectedVehicle
    );
  }

  factory AssigneTripState.initial() {
    return  AssigneTripState(
      status: StateStatus.initial,
      driversList: [],
      vehiclesList: [],
      selectedDriver: DriverModel.initial(),
      selectedVehicle: VehicleModel.initial(),
    );
  }

  @override
  List<Object> get props => [status, driversList, vehiclesList];
}
