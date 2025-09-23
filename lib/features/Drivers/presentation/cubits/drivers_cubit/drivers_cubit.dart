import 'package:drb_task/core/enums/drivers/driver_state_enum.dart';
import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/Drivers/data/models/driver_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'drivers_state.dart';

class DriversCubit extends Cubit<DriversState> {
  DriversCubit() : super(DriversState.initial());

  Future<void> fetchData() async {
    emit(state.copyWith(status: StateStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    Future.wait([_fetchDrivers()]);
    emit(state.copyWith(status: StateStatus.success));
  }

  Future<void> _fetchDrivers() async {
    emit(state.copyWith(status: StateStatus.loading));
    final List<DriverModel> driversList = [
      DriverModel(
        driverName: 'Driver 1',
        driverImage:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        licenceNumber: 123123123,
        driverState: DriverState.onTrip,
        assignedVehicle: 'Vehicle 1',
        curruntTrip: 'Trip 1',
      ),
      DriverModel(
        driverName: 'Driver 2',
        driverImage:
            'https://images.unsplash.com/photo-1599566150163-29194dcaad36?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        licenceNumber: 456456456,
        driverState: DriverState.available,
      ),
      DriverModel(
        driverName: 'Driver 3',
        driverImage:
            'https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        licenceNumber: 789789789,
        driverState: DriverState.onTrip,
        assignedVehicle: 'Vehicle 2',
        curruntTrip: 'Trip 2',
      ),
      DriverModel(
        driverName: 'Driver 4',
        driverImage:
            'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        licenceNumber: 147147147,
        driverState: DriverState.onTrip,
        assignedVehicle: 'Vehicle 3',
        curruntTrip: 'Trip 3',
      ),
      DriverModel(
        driverName: 'Driver 5',
        driverImage:
            'https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        licenceNumber: 258258258,
        driverState: DriverState.available,
      ),
      DriverModel(
        driverName: 'Driver 6',
        driverImage:
            'https://images.unsplash.com/photo-1560250097-0b93528c311a?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        licenceNumber: 369369369,
        driverState: DriverState.available,
      ),
    ];
    emit(state.copyWith(driversList: driversList, status: StateStatus.success));
  }
}
