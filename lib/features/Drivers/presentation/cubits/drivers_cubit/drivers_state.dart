part of 'drivers_cubit.dart';

class DriversState extends Equatable {
  final StateStatus status;
  final List<DriverModel> driversList;

  const DriversState({required this.status, required this.driversList});

  factory DriversState.initial() {
    return const DriversState(status: StateStatus.initial, driversList: []);
  }

  DriversState copyWith({StateStatus? status, List<DriverModel>? driversList}) {
    return DriversState(
      status: status ?? this.status,
      driversList: driversList ?? this.driversList,
    );
  }

  @override
  List<Object> get props => [status, driversList];
}
