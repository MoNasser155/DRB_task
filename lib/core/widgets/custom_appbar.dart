import 'package:drb_task/core/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../colorhelper.dart';

class CustomAppbar {


  // custom appbar for main view screens 
  static   AppBar customMainViewAppBar() {
    return AppBar(
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: ColorHelper.white,
        ),
      );
  }


  // custom appbar for details screens
  static AppBar customDetailsAppBar({ required String title, required BuildContext context }) {
    return AppBar(
      title: Text(
        title,
        style: context.theme.textTheme.titleLarge!.copyWith(
          color: ColorHelper.white,
        ),
      ),
      backgroundColor: ColorHelper.primary,
      centerTitle: true,
      automaticallyImplyLeading: true,
      surfaceTintColor: ColorHelper.transparent,
      shadowColor: ColorHelper.grey300,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorHelper.primary,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }


}
