import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      default:
        return null;
    }
  }
}
