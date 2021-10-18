import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_bloc/data/model/todo_models.dart';
import 'package:todo_bloc/data/services/api.dart';
import 'package:todo_bloc/locator.dart';

part 'delete_todo_state.dart';

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
