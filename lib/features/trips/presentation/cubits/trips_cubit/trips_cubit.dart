import 'package:drb_task/core/enums/trips/trip_progress_enum.dart';
import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/trips/data/models/trip_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'trips_state.dart';

class TripsCubit extends Cubit<TripsState> {
  TripsCubit() : super(TripsState.initial());

  Future<void> fetchData() async {
    emit(state.copyWith(status: StateStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    Future.wait([_fetchTrips()]);
    emit(state.copyWith(status: StateStatus.success));
  }

  Future<void> _fetchTrips() async {
    emit(state.copyWith(status: StateStatus.loading));
    final List<TripModel> tripsList = [
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

    emit(state.copyWith(tripsList: tripsList, status: StateStatus.success));
  }
}
