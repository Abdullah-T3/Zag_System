import 'package:flutter/material.dart';
import 'package:zag_system_task1/core/routing/routs.dart';
import 'package:zag_system_task1/features/home/screens/home_page_screen.dart';
import 'package:zag_system_task1/features/onBording/screens/onBording_screen.dart';

class AppRouts {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (context) => const HomePageScreen());
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (context) =>  OnbordingScreen());
      default:
        return null;
    }
  }
}
