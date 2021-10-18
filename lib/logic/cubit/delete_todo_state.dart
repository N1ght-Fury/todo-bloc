part of 'delete_todo_cubit.dart';

@immutable
abstract class DeleteTodoState {
  const DeleteTodoState();
}

class DeleteTodoInitial extends DeleteTodoState {}

class DeleteTodoLoading extends DeleteTodoState {}

class DeleteTodoSuccess extends DeleteTodoState {
  final int id;
  const DeleteTodoSuccess({required this.id});
}

class DeleteTodoFail extends DeleteTodoState {}
