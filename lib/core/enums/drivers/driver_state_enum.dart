enum DriverState {
  available,
  onTrip;

  String get title {
    switch (this) {
      case DriverState.available:
        return 'Available';
      case DriverState.onTrip:
        return 'On Trip';
    }
  }
}
