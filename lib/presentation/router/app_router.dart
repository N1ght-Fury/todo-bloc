import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/todo_models.dart';
import '../../logic/cubit/add_todo_cubit.dart';
import '../../logic/cubit/delete_todo_cubit.dart';
import '../../logic/cubit/update_todo_cubit.dart';
import '../screens/add_todo_screen.dart';
import '../screens/login_screen.dart';
import '../screens/todo_screen.dart';

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
      case '/addTodo':
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<AddTodoCubit>(
                create: (context) => AddTodoCubit(),
              ),
              BlocProvider<UpdateTodoCubit>(
                create: (context) => UpdateTodoCubit(),
              ),
              BlocProvider<DeleteTodoCubit>(
                create: (context) => DeleteTodoCubit(),
              ),
            ],
            child: Builder(
              builder: (context) {
                return AddTodoScreen(
                  todo: settings.arguments != null ? (settings.arguments as Todo) : null,
                );
              },
            ),
          ),
        );
      default:
        return null;
    }
  }
}
