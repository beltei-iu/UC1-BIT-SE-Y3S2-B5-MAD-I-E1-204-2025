import 'package:flutter/material.dart';
import 'package:mad/routes/app_route.dart';
import 'package:mad/screens/main_screen.dart';
import 'package:mad/screens/splash_screen.dart';
import 'package:mad/utils/app_color.dart';

void main() {
  final screen = MainScreen();

  // 1. Create App
  final app = MaterialApp(
    // Option1
    // home: screen,

    // Option 2
    initialRoute: AppRoute.splashScreen,
    onGenerateRoute: AppRoute.generateRoute,
    navigatorKey: AppRoute.key,

    // Option 3
    // routes: {
    //   '/': (context) => SplashScreen(),
    //   '/mainScreen': (context) => MainScreen(),
    // },

    theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: AppColor.appBackgroundColor),
        useMaterial3: false),
  );

  // Run App
  runApp(app);
}
