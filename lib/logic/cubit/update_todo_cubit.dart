import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/todo_models.dart';
import '../../data/services/api.dart';
import '../../locator.dart';

part 'update_todo_state.dart';
part 'update_todo_cubit.freezed.dart';

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
