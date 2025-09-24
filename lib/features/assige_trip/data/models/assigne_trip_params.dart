class AssigneTripParams {
  final String driverId;
  final String vehicleId;
  final String pickupLocation;
  final String dropOffLocation;
  
  AssigneTripParams({
    required this.driverId,
    required this.vehicleId,
    required this.pickupLocation,
    required this.dropOffLocation,
  });

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['driverId'] = driverId;
    json['vehicleId'] = vehicleId;
    json['pickupLocation'] = pickupLocation;
    json['dropOffLocation'] = dropOffLocation;
    return json;
  }
}
