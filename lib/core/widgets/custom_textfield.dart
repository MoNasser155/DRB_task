import 'dart:ui' as ui;
import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppCustomTextField extends StatelessWidget {
  const AppCustomTextField({
    super.key,
    this.onChange,
    this.hint,
    this.suffix,
    this.isHidden = false,
    this.prefix,
    this.initial,
    this.maxlines,
    this.minlines,
    this.readonly = false,
    this.fillColor,
    this.controller,
    this.validate,
    this.inputType,
    this.action,
    this.borderRadius,
    this.scrollPhysics,
    this.isEnabled = true,
    this.inputFormatters,
  });
  final Function(String)? onChange;
  final TextInputAction? action;
  final String? hint, initial;
  final bool isHidden, readonly;
  final Widget? suffix, prefix;
  final int? maxlines, minlines;
  final Color? fillColor;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final TextInputType? inputType;
  final BorderRadius? borderRadius;
  final ScrollPhysics? scrollPhysics;
  final bool? isEnabled;
  final List<TextInputFormatter>? inputFormatters;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      inputFormatters: inputFormatters,
      enabled: isEnabled,
      scrollPhysics: scrollPhysics ?? const NeverScrollableScrollPhysics(),
      textAlignVertical: TextAlignVertical.center,
      selectionHeightStyle: ui.BoxHeightStyle.max,
      textInputAction: action,
      validator: validate,
      controller: controller,
      initialValue: initial,
      style: context.theme.textTheme.headlineSmall,
      onChanged: onChange,
      readOnly: readonly,
      maxLines: maxlines,
      minLines: minlines,
      obscureText: isHidden,
      keyboardType: inputType,
      cursorErrorColor: Colors.red,
      cursorColor: ColorHelper.primary,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.red),
        filled: true,
        fillColor: isEnabled == false
            ? ColorHelper.grey200
            : fillColor ?? Colors.white,
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          borderSide: BorderSide(color: ColorHelper.grey50),
        ),
        prefixIcon: prefix,
        prefixIconConstraints: const BoxConstraints(minWidth: 40, maxWidth: 40),
        suffixIcon: suffix,
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          borderSide: const BorderSide(
            style: BorderStyle.solid,
            width: 1,
            color: Colors.red,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            width: 1,
            color: ColorHelper.grey400,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            width: 1,
            color: ColorHelper.grey200,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            width: 1,
            color: ColorHelper.primary,
          ),
        ),
        hintText: hint,
        hintStyle: Theme.of(
          context,
        ).textTheme.headlineSmall!.copyWith(color: ColorHelper.grey400),
      ),
    );
  }
}
