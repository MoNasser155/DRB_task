enum VehiclesStatus {
  available,
  assigned;

  String get name {
    switch (this) {
      case VehiclesStatus.available:
        return 'Available';
      case VehiclesStatus.assigned:
        return 'Assigned';
    }
  }
}
