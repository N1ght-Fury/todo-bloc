part of 'todo_cubit.dart';

@immutable
abstract class TodoState {
  const TodoState();
}

class TodoInitial extends TodoState {}

class GetTodos extends TodoState {}
