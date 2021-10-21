import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/todo_models.dart';
import '../../data/services/api.dart';
import '../../locator.dart';

part 'add_todo_state.dart';
part 'add_todo_cubit.freezed.dart';

class AddTodoCubit extends Cubit<AddTodoState> {
  final Api api = getIt<Api>();

  AddTodoCubit() : super(AddTodoInitial());

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
