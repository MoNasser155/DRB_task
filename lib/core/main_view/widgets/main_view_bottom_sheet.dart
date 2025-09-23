import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/main_view/widgets/custom_tap_bar.dart';
import 'package:flutter/material.dart';



class MainViewBottomSheet extends StatelessWidget {
  const MainViewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(
            color: ColorHelper.white,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.grey.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: const CustomTabBar(),
        ),
      ),
    );
  }
}