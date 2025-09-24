

import 'package:drb_task/core/enums/trips/trip_progress_enum.dart';
import 'package:drb_task/features/trips/data/models/trip_model.dart';

class MockTripsData {
  static  List<TripModel> trips = [
    TripModel(
      tripId: 1,
      assignedDriver: 'Driver 1',
      assignedVehicle: 'Vehicle 1',
      pickup: 'cairo',
      dropOff: 'giza',
      tripProgress: TripProgress.inProgress,
    ),
    TripModel(
      tripId: 2,
      assignedDriver: 'Driver 2',
      assignedVehicle: 'Vehicle 2',
      pickup: 'alexandria',
      dropOff: 'tanta',
      tripProgress: TripProgress.pending,
    ),
    TripModel(
      tripId: 3,
      assignedDriver: 'Driver 3',
      assignedVehicle: 'Vehicle 3',
      pickup: 'mansoura',
      dropOff: 'cairo',
      tripProgress: TripProgress.completed,
    ),
    TripModel(
      tripId: 4,
      assignedDriver: 'Driver 4',
      assignedVehicle: 'Vehicle 4',
      pickup: 'aswan',
      dropOff: 'giza',
      tripProgress: TripProgress.cancelled,
    ),
  ];
}