import 'package:flutter/material.dart';
import 'package:mad/screens/book_detail_screen.dart';
import 'package:mad/screens/main_screen.dart';
import 'package:mad/screens/splash_screen.dart';

class AppRoute {
  static const splashScreen = "/";
  static const mainScreen = "/mainScreen";
  static const bookDetailScreen = "/bookDetailScreen";

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return _buildRoute(settings, SplashScreen());
      case mainScreen:
        return _buildRoute(settings, MainScreen());
      case bookDetailScreen:
        return _buildRoute(settings, BookDetailScreen());
      default:
        throw RouteException("Route not found.");
    }
  }

  static Route<dynamic> _buildRoute(RouteSettings setting, Widget newRoute) {
    return MaterialPageRoute(
        settings: setting, builder: (BuildContext context) => newRoute);
  }
}

class RouteException {
  String message;

  RouteException(this.message);
}
