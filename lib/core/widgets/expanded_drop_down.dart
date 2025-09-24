import 'package:drb_task/core/appassets/icons.dart';
import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpandedDropdown<T> extends StatelessWidget {
  final String hint;
  final List<T> items;
  final T? selectedValue;
  final String Function(T) itemLabelBuilder;
  final ValueChanged<T?>? onChanged;
  final bool isEnabled;
  final int? maxLines;

  const ExpandedDropdown({
    super.key,
    required this.hint,
    required this.items,
    required this.itemLabelBuilder,
    this.selectedValue,
    this.onChanged,
    this.isEnabled = true,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: ColorHelper.grey400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: ColorHelper.primary),
        ),
        labelText: 'Select',
        hintText: hint,
        labelStyle: context.theme.textTheme.headlineSmall!.copyWith(
          color: ColorHelper.black,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: ColorHelper.grey400),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      dropdownColor: ColorHelper.lightPrimary,
      menuMaxHeight: context.height / 2,
      isExpanded: true,
      elevation: 8,
      borderRadius: BorderRadius.circular(12),
      padding: EdgeInsets.zero,
      icon: Transform.rotate(
        angle: 3.14 * 1.5,
        child: SvgPicture.asset(
          AppIcons.arrowBack,
          colorFilter: ColorFilter.mode(ColorHelper.black, BlendMode.srcIn),
        ),
      ),
      items:
          items.map((item) {
            return DropdownMenuItem<T>(
              value: item,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  itemLabelBuilder(item),
                  maxLines: maxLines,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }).toList(),
      onChanged: isEnabled ? onChanged : null,
      value: selectedValue,
      hint: Text(hint),
    );
  }
}
