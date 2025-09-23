
import 'package:drb_task/core/colorhelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class TabIcon extends StatelessWidget {
  const TabIcon({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.animationDuration,
  });

  final String icon;
  final bool isSelected;
  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: isSelected ? 1.1 : 0.9,
      duration: animationDuration,
      curve: Curves.easeInOut,
      child: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          isSelected ? ColorHelper.primary : ColorHelper.black,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
