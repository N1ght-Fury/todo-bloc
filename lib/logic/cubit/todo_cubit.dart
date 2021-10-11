import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../data/services/api.dart';
import '../../data/model/todo_models.dart';
import 'user_cubit.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  final Api api = Api();
  final UserState userState;

  TodoCubit({required this.userState}) : super(TodoInitial()) {
    Logger().log(Level.info, 'Inside TodoCubit consructor');
    getTodos();
  }

  Future<void> getTodos() async {
    emit(TodosLoading());

    GetTodosResult getTodosResult = await api.getUserTodos(userId: (userState as UserLoggedIn).loggedInUser!.id!);

    if (getTodosResult.success) {
      emit(TodosSuccess(todos: getTodosResult.todos));
    } else {
      emit(TodosFailed());
    }
  }

  Future<void> addTodo({required Todo todo}) async {
    emit(AddTodoLoading());

    CreateTodoResult createTodoResult = await api.createTodo(todo: todo);

    if (createTodoResult.success) {
      emit(AddTodoSuccess(todo: createTodoResult.todo!));
    } else {
      emit(AddTodoFail());
    }
  }
}
