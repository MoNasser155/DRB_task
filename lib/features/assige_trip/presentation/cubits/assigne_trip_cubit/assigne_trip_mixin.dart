import 'package:flutter/widgets.dart';

mixin AssigneTripMixin {
  // usecases 
  // this is an example 
  // final AssigneTripUseCase = sl<AssigneTripUseCase>();    we will make our use case and repo and repo impl and register them all inside this feature DI file 

  // controllers
  final TextEditingController pickupController = TextEditingController();
  final TextEditingController dropOffController = TextEditingController();
}