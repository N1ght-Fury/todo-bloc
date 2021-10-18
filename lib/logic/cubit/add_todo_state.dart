part of 'add_todo_cubit.dart';

@immutable
abstract class AddTodoState {
  const AddTodoState();
}

class AddTodoInitial extends AddTodoState {}

class AddTodoLoading extends AddTodoState {}

class AddTodoSuccess extends AddTodoState {
  final Todo todo;
  const AddTodoSuccess({required this.todo});
}

class AddTodoFail extends AddTodoState {}
