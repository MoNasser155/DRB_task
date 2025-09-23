import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/main_view/widgets/tap/tap_icon.dart';
import 'package:drb_task/core/main_view/widgets/tap/tap_label.dart';
import 'package:drb_task/core/shared/cubits/main_view_cubit/tap_config.dart';
import 'package:flutter/material.dart';


class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    required this.index,
    required this.config,
    required this.isSelected,
    required this.onTap,
    required this.animationDuration,
  });

  final int index;
  final TabConfig config;
  final bool isSelected;
  final VoidCallback onTap;
  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      splashColor: ColorHelper.grey200.withValues(alpha: 0.2),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
              duration: animationDuration,
              curve: Curves.easeInOut,
              width: isSelected ? 60 : 0,
              height: isSelected ? 44 : 0,
            ),
           
              
               Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TabIcon(
                    icon: config.icon,
                    isSelected: isSelected,
                    animationDuration: animationDuration,
                  ),
                  const SizedBox(height: 4),
                  TabLabel(
                    label: config.label,
                    isSelected: isSelected,
                    animationDuration: animationDuration,
                  ),
                ],
              ),
            
          ],
        ),
      ),
    );
  }
}
