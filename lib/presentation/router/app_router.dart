import 'package:flutter/material.dart';

import '../screens/todo_screen.dart';
import '../screens/login_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/todos':
        return MaterialPageRoute(
          builder: (_) => const TodoScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return null;
    }
  }
}
