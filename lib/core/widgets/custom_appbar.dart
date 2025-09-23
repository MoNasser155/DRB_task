import 'package:drb_task/core/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import '../colorhelper.dart';
import '../utiles/navigator_helper.dart';

class CustomAppbar {
  static AppBar buildAppBar(BuildContext context, String title) {
    return AppBar(
      toolbarHeight: 48,
      backgroundColor: ColorHelper.white,
      foregroundColor: ColorHelper.white,
      shadowColor: ColorHelper.white,
      surfaceTintColor: ColorHelper.white,
      title: Text(title, style: context.theme.textTheme.titleLarge),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded, color: ColorHelper.primary),
        onPressed: () {
          AppNavigator.pop();
        },
      ),
    );
  }

  static AppBar buildColoredAppBar(
      BuildContext context, String title, Color color) {
    return AppBar(
      toolbarHeight: 48,
      backgroundColor: color,
      foregroundColor: color,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: Brightness.dark,
      ),
      shadowColor: color,
      surfaceTintColor: color,
      title: Text(title, style: context.theme.textTheme.titleLarge),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded, color: ColorHelper.primary),
        onPressed: () {
          AppNavigator.pop();
        },
      ),
    );
  }

  static AppBar buildCustomAppBar(BuildContext context, String title) {
    return AppBar(
      toolbarHeight: 64,
      backgroundColor: ColorHelper.lightPrimary,
      foregroundColor: ColorHelper.white,
      shadowColor: ColorHelper.white,
      surfaceTintColor: ColorHelper.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorHelper.lightPrimary,
        statusBarIconBrightness: Brightness.dark,
      ),
      title: Text(
        title,
        style: context.theme.textTheme.headlineLarge!.copyWith(
          fontSize: 28,
          fontWeight: FontWeight.w800,
          letterSpacing: 1,
        ),
      ),
      centerTitle: true,
      leadingWidth: 64,
      leading: IconButton(
        style: IconButton.styleFrom(
          shadowColor: ColorHelper.shadow.withValues(alpha: 0.25),
          elevation: 4,
          backgroundColor: ColorHelper.white,
          foregroundColor: ColorHelper.primary,
        ),
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: ColorHelper.primary,
          size: 24,
        ),
        onPressed: () {
          AppNavigator.pop();
        },
      ),
    );
  }
}
