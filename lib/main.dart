import 'package:drb_task/core/app_theme.dart';
import 'package:drb_task/core/main_view/main_view.dart';
import 'package:drb_task/core/shared/di.dart';
import 'package:drb_task/core/utiles/navigator_helper.dart';
import 'package:flutter/material.dart';

void main() {
  // init service locator
  initServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DRB TASK',
      debugShowCheckedModeBanner: false,
      navigatorKey: AppNavigator.navigatorKey,
      theme: appThemeData[AppThemeType.light],
      home: const MainView(),
    );
  }
}
