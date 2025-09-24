import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:flutter/material.dart';

class CustomDetailsRow extends StatelessWidget {
  const CustomDetailsRow({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: context.theme.textTheme.titleMedium!.copyWith(
            color: ColorHelper.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subTitle,
          style: context.theme.textTheme.bodyMedium!.copyWith(
            color: ColorHelper.primary,
          ),
        ),
      ],
    );
  }
}
