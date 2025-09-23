import 'package:drb_task/core/colorhelper.dart';
import 'package:flutter/material.dart';

enum TripProgress {
  pending,
  inProgress,
  completed,
  cancelled;

  String get name {
    switch (this) {
      case TripProgress.pending:
        return 'Pending';
      case TripProgress.inProgress:
        return 'In Progress';
      case TripProgress.completed:
        return 'Completed';
      case TripProgress.cancelled:
        return 'Cancelled';
    }
  }

  Color get color {
    switch (this) {
      case TripProgress.pending:
        return const Color.fromARGB(255, 214, 193, 0);
      case TripProgress.inProgress:
        return Colors.orange;
      case TripProgress.completed:
        return ColorHelper.primary;
      case TripProgress.cancelled:
        return ColorHelper.red;
    }
  }
}
