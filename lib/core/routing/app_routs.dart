import 'package:flutter/material.dart';
import 'package:zag_system_task1/core/routing/routs.dart';

import 'package:zag_system_task1/features/Authentication/Screens/SignUp.dart';
import '../../features/Authentication/Screens/ForgotPassScreen.dart';
import '../../features/Authentication/Screens/LoginScreen.dart';
import '../../features/Splash/splash_screen.dart';
import '../../features/onBoarding/screens/onBording_screen.dart';
import '../../features/home/screens/home_page_screen.dart';

class AppRouts {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (context) => const HomePageScreen());
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (context) => OnbordingScreen());
      case Routes.SignUpScreen:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case Routes.LoginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case Routes.ForgotPassScreen:
        return MaterialPageRoute(builder: (context) => ForgotPassScreen());
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      default:
        return null;
    }
  }
}
