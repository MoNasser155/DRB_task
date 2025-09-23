import 'package:drb_task/core/enums/trips/trip_progress_enum.dart';

class TripModel {
  int tripId;
  String assignedDriver;
  String assignedVehicle;
  String pickup;
  String dropOff;
  TripProgress tripProgress;

  TripModel({
    required this.tripId,
    required this.assignedDriver,
    required this.assignedVehicle,
    required this.pickup,
    required this.dropOff,
    required this.tripProgress,
  });

  factory TripModel.skeleton () {
    return TripModel(
      tripId: 0,
      assignedDriver: '',
      assignedVehicle: '',
      pickup: '',
      dropOff: '',
      tripProgress: TripProgress.pending,
    );
  }

}


