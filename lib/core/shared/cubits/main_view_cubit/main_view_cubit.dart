import 'package:drb_task/core/appassets/icons.dart';
import 'package:drb_task/core/shared/cubits/main_view_cubit/tap_config.dart';
import 'package:drb_task/core/shared/state_status.dart';
import 'package:drb_task/features/Drivers/presentation/pages/drivers_screen.dart';
import 'package:drb_task/features/Vehicles/presentation/pages/vehicles_screen.dart';
import 'package:drb_task/features/trips/presentation/pages/trips_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_view_state.dart';

class MainViewCubit extends Cubit<MainViewState> {
  MainViewCubit() : super(MainViewState.initial());

  static MainViewCubit get(context) => BlocProvider.of(context);

  final List<Widget> screens = [
    VehiclesScreen(),
    DriversScreen(),
    TripsScreen(),
  ];

  // Tab configuration
  final List<TabConfig> tabs = [
    TabConfig(icon: AppIcons.van, label: 'Vehicles'),
    TabConfig(icon: AppIcons.driver, label: 'Drivers'),
    TabConfig(icon: AppIcons.trip, label: 'Trips'),
    
  ];

  // Handle tab selection
  void onTabPressed(int index) {
    if (index != state.selectedTabIndex && index >= 0 && index < 4) {
      emit(
        state.copyWith(selectedTabIndex: index, status: StateStatus.success),
      );
    }
  }

  // Handle tap outside gesture for nearest tab selection
  void onTapOutside(double localX, List<double> tabCenters) {
    double minDistance = double.infinity;
    int nearestIndex = state.selectedTabIndex;

    for (int i = 0; i < tabCenters.length; i++) {
      final distance = (localX - tabCenters[i]).abs();
      if (distance < minDistance) {
        minDistance = distance;
        nearestIndex = i;
      }
    }

    if (nearestIndex != state.selectedTabIndex) {
      onTabPressed(nearestIndex);
    }
  }

  // Set initial tab
  void setInitialTab(int index) {
    if (index >= 0 && index < 4) {
      emit(
        state.copyWith(selectedTabIndex: index, status: StateStatus.initial),
      );
    }
  }

  // Check if tab is selected
  bool isTabSelected(int index) => state.selectedTabIndex == index;
}
