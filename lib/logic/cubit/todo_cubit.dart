import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../data/model/todo_models.dart';
import '../../data/services/api.dart';

import '../../locator.dart';
import 'user_cubit.dart';

part 'todo_state.dart';

@singleton
class TodoCubit extends Cubit<TodoState> {
  final Api api;

  TodoCubit(this.api) : super(TodoInitial()) {
    Logger().log(Level.info, 'Inside TodoCubit consructor');
  }

  Future<void> getTodos() async {
    emit(TodosLoading());

    GetTodosResult getTodosResult = await api.getUserTodos(userId: (getIt<UserCubit>().state as UserLoggedIn).loggedInUser.id!);

    if (getTodosResult.success) {
      emit(TodosSuccess(todos: getTodosResult.todos));
    } else {
      emit(TodosFailed());
    }
  }
}
