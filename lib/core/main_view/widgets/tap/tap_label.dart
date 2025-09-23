import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:flutter/material.dart';

class TabLabel extends StatelessWidget {
  const TabLabel({
    super.key,
    required this.label,
    required this.isSelected,
    required this.animationDuration,
  });

  final String label;
  final bool isSelected;
  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: animationDuration,
      curve: Curves.easeInOut,
      style: context.theme.textTheme.headlineSmall!.copyWith(
        color: Colors.white,
      ),
      child: Text(
        label,
        style:
            isSelected
                ? context.theme.textTheme.headlineSmall!.copyWith(
                  color: ColorHelper.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )
                : context.theme.textTheme.labelSmall!.copyWith(
                  color: ColorHelper.black,
                  fontSize: 10,
                ),
      ),
    );
  }
}
