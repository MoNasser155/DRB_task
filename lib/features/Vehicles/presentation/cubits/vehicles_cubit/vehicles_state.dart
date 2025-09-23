part of 'vehicles_cubit.dart';

class VehiclesState extends Equatable {
  final StateStatus status;
  final List<VehicleModel> vehiclesList;

  const VehiclesState({required this.status, required this.vehiclesList});

  VehiclesState copyWith({
    StateStatus? status,
    List<VehicleModel>? vehiclesList,
  }) {
    return VehiclesState(
      status: status ?? this.status,
      vehiclesList: vehiclesList ?? this.vehiclesList,
    );
  }

  factory VehiclesState.initial() =>
      VehiclesState(status: StateStatus.initial, vehiclesList: []);

  @override
  List<Object> get props => [status, vehiclesList];
}
