import 'package:flutter/material.dart';

import '../view/boottom_navigation_bar/bottom_navigation_bar.dart';
import '../view/splash/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initialRoute = Routes.splashScreenRoute;
  static Map<String, WidgetBuilder> routes = {
    Routes.splashScreenRoute: (context) => const SplashScreen(),
    Routes.homeMainScreenRoute: (context) => const HomeMainScreen(),

    // Routes.introRoute: (context) => const IntroScreen(),

  };

}
