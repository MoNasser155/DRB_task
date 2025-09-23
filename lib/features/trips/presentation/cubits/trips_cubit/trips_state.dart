part of 'trips_cubit.dart';

class TripsState extends Equatable {
  final StateStatus status;
  final List<TripModel> tripsList;
  //in case api error and show error message
  final String? errorMessage;

  const TripsState({
    required this.status,
    required this.tripsList,
    this.errorMessage,
  });

  factory TripsState.initial() {
    return const TripsState(
      status: StateStatus.initial,
      tripsList: [],
    );
  }

  TripsState copyWith({
    StateStatus? status,
    List<TripModel>? tripsList,
    String? errorMessage,
  }) {
    return TripsState(
      status: status ?? this.status,
      tripsList: tripsList ?? this.tripsList,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [ status, tripsList, errorMessage ]  ;
}


