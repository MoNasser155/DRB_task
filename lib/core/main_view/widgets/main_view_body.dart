import 'package:drb_task/core/main_view/widgets/main_view_bottom_sheet.dart';
import 'package:drb_task/core/shared/cubits/main_view_cubit/main_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainViewCubit, MainViewState>(
      builder: (context, state) {
        final cubit = context.read<MainViewCubit>();
        return Scaffold(
          bottomSheet: const MainViewBottomSheet(),
          body: cubit.screens[state.selectedTabIndex],
        );
      },
    );
  }
}
