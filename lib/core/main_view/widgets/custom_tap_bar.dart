
import 'package:drb_task/core/main_view/widgets/tap/tap_item.dart';
import 'package:drb_task/core/shared/cubits/main_view_cubit/main_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  static const Duration _animationDuration = Duration(milliseconds: 300);



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainViewCubit, MainViewState>(
      builder: (context, state) {
        final cubit = context.read<MainViewCubit>();
        return GestureDetector(
          onTapDown: (details) => _handleTapOutside(context, details),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
            child: Container(
              height: 56,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  cubit.tabs.length,
                  (index) => TabItem(
                    index: index,
                    config: cubit.tabs[index],
                    isSelected:
                        context.read<MainViewCubit>().isTabSelected(index),
                    onTap: () =>
                        context.read<MainViewCubit>().onTabPressed(index),
                    animationDuration: _animationDuration,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _handleTapOutside(BuildContext context, TapDownDetails details) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final localOffset = renderBox.globalToLocal(details.globalPosition);
final cubit = context.read<MainViewCubit>();
    // Calculate approximate tab centers (simplified calculation)
    final tabWidth = renderBox.size.width / cubit.tabs.length;
    final tabCenters = List.generate(
      cubit.tabs.length,
      (index) => (index + 0.5) * tabWidth,
    );

    context.read<MainViewCubit>().onTapOutside(localOffset.dx, tabCenters);
  }
}