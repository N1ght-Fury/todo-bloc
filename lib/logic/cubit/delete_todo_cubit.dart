import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/todo_models.dart';
import '../../data/services/api.dart';
import '../../locator.dart';

part 'delete_todo_state.dart';
part 'delete_todo_cubit.freezed.dart';

class DeleteTodoCubit extends Cubit<DeleteTodoState> {
  final Api api = getIt<Api>();

  DeleteTodoCubit() : super(DeleteTodoInitial());

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
