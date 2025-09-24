import 'package:drb_task/core/widgets/custom_appbar.dart';
import 'package:drb_task/features/trips/data/models/trip_model.dart';
import 'package:drb_task/features/trips/presentation/widgets/trip_details_body.dart';
import 'package:flutter/material.dart';

class TripDetailsScreen extends StatelessWidget {
  const TripDetailsScreen({super.key ,required this.tripModel});
final TripModel tripModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
     appBar: CustomAppbar.customDetailsAppBar(context:context,title: 'Trip Details'), 
     body: TripDetailsBody(tripModel: tripModel),
    );
  }
}