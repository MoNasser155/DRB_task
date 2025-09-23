import 'package:drb_task/core/appassets/icons.dart';

enum VehiclesType {
  truck,
  van,
  bike,
  ;
  
  // get vehicleName
  String get name {
    switch (this) {
      case VehiclesType.truck:
        return 'Truck';
      case VehiclesType.van:
        return 'Van';
      case VehiclesType.bike:
        return 'Bike';
    }
  }


  // get vehicleImage 
  String get image {
    switch (this) {
      case VehiclesType.truck:
        return AppIcons.truck;
      case VehiclesType.van:
        return AppIcons.van;
      case VehiclesType.bike:
        return AppIcons.bike;
    }
  }
}
