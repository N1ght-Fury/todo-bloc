import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../data/model/todo_models.dart';
import '../../data/services/api.dart';

import '../../locator.dart';
import 'user_cubit.dart';
part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  final Api api = getIt<Api>();

  TodoCubit() : super(TodoInitial()) {
    Logger().log(Level.info, 'Inside TodoCubit consructor');
    // TODO: ASK WHERE I SHOULD CALL THE GETTODOS FUNCTION
    // Also how do i get todos each time after adding a new todo if i dont want to show progress indicator?
    // Lastly should cubit classes be generated with freezed?
    // Api dosyasında fromJson içlerini elle verdik. Nasıl düzeltebiliriz?
    /* getTodos(); */
  }

  Future<void> getTodos() async {
    emit(TodosLoading());

    GetTodosResult getTodosResult = await api.getUserTodos(userId: (getIt<UserCubit>().state as UserLoggedIn).loggedInUser!.id!);

    if (getTodosResult.success) {
      emit(TodosSuccess(todos: getTodosResult.todos));
    } else {
      emit(TodosFailed());
    }
  }
}
