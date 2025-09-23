import 'package:drb_task/core/appassets/icons.dart';
import 'package:drb_task/core/enums/vehicles/vehicles_status_enum.dart';
import 'package:drb_task/core/enums/vehicles/vehicles_type_enum.dart';

class VehicleModel {
  int vehicleId;
  String vehicleName;
  String vehicleImage;
  VehiclesType vehicleType;
  VehiclesStatus vehicleStatus;
  String? assignedDriver;
  String? currentTrip;

  VehicleModel({
    required this.vehicleId,
    required this.vehicleName,
    required this.vehicleImage,
    required this.vehicleType,
    required this.vehicleStatus,
    this .assignedDriver,
    this.currentTrip
  });

  factory VehicleModel.skeleton() {
    return VehicleModel(
      vehicleId: 0,
      vehicleName: '',
      vehicleImage: AppIcons.empty,
      vehicleType: VehiclesType.truck,
      vehicleStatus: VehiclesStatus.available,
      assignedDriver: '', 
      currentTrip: ''
    );
  }
}
