part of 'update_todo_cubit.dart';

@immutable
abstract class UpdateTodoState {
  const UpdateTodoState();
}

class UpdateTodoInitial extends UpdateTodoState {}

class UpdateTodoLoading extends UpdateTodoState {}

class UpdateTodoSuccess extends UpdateTodoState {
  final Todo todo;
  const UpdateTodoSuccess({required this.todo});
}

class UpdateTodoFail extends UpdateTodoState {}
