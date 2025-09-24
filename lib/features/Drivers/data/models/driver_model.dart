import 'package:drb_task/core/enums/drivers/driver_state_enum.dart';

class DriverModel {
  int driverId;
  String driverName;
  String driverImage;
  int licenceNumber;
  DriverState driverState;
  String? assignedVehicle;
  String? curruntTrip;

  DriverModel({
    required this.driverId,
    required this.driverName,
    required this.driverImage,
    required this.licenceNumber,
    required this.driverState,
    this.assignedVehicle,
    this.curruntTrip,
  });

  factory DriverModel.skeleton() {
    return DriverModel(
      driverId: 0,
      driverName: 'Driver Name',
      driverImage: '',
      licenceNumber: 0,
      driverState: DriverState.available,
      assignedVehicle: '',
      curruntTrip: '',
    );
  }
  factory DriverModel.initial() {
    return DriverModel(
      driverId: 0,
      driverName: '',
      driverImage: '',
      licenceNumber: 0,
      driverState: DriverState.available,
      assignedVehicle: '',
      curruntTrip: '',
    );
  }
}
