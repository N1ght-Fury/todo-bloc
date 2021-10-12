import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../data/model/todo_models.dart';
import '../../data/services/api.dart';

import 'user_cubit.dart';
part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  final Api api = Api();
  final UserState userState;

  TodoCubit({required this.userState}) : super(TodoInitial()) {
    Logger().log(Level.info, 'Inside TodoCubit consructor');
    getTodos();
  }

  /* void onUserLogOut() {
    emit(TodoInitial());
  }
 */
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

  Future<void> updateTodo({required Todo todo}) async {
    emit(UpdateTodoLoading());

    UpdateTodoResult updateTodoResult = await api.updateTodo(todo: todo);

    if (updateTodoResult.success) {
      emit(UpdateTodoSuccess(todo: updateTodoResult.todo!));
    } else {
      emit(UpdateTodoFail());
    }
  }

  Future<void> deleteTodo({required Todo todo}) async {
    emit(DeleteTodoLoading());

    bool success = await api.deleteTodo(todo: todo);

    if (success) {
      emit(DeleteTodoSuccess(id: todo.id!));
    } else {
      emit(DeleteTodoFail());
    }
  }
}
