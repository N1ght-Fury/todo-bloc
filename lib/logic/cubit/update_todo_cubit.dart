import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_bloc/data/model/todo_models.dart';
import 'package:todo_bloc/data/services/api.dart';
import 'package:todo_bloc/locator.dart';

part 'update_todo_state.dart';

class UpdateTodoCubit extends Cubit<UpdateTodoState> {
  final Api api = getIt<Api>();

  UpdateTodoCubit() : super(UpdateTodoInitial());

  Future<void> updateTodo({required Todo todo}) async {
    emit(UpdateTodoLoading());

    UpdateTodoResult updateTodoResult = await api.updateTodo(todo: todo);

    if (updateTodoResult.success) {
      emit(UpdateTodoSuccess(todo: updateTodoResult.todo!));
    } else {
      emit(UpdateTodoFail());
    }
  }
}
