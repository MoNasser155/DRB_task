import 'package:drb_task/core/constants.dart';
import 'package:drb_task/core/main_view/widgets/main_view_body.dart';
import 'package:drb_task/core/shared/cubits/main_view_cubit/main_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class MainView extends StatelessWidget {
  const MainView({super.key, this.initialIndex = 0});
  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MainViewCubit>()..setInitialTab(initialIndex),
      child: const MainViewBody(),
    );
  }
}



