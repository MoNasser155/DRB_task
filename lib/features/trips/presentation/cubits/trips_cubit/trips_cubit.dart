import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/trips/data/datasources/mock_data.dart';
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
    final List<TripModel> tripsList =MockTripsData.trips;
    emit(state.copyWith(tripsList: tripsList, status: StateStatus.success));
  }
}
