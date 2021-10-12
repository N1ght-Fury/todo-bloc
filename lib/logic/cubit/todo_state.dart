part of 'todo_cubit.dart';

@immutable
abstract class TodoState {
  const TodoState();
}

class TodoInitial extends TodoState {}

class TodosLoading extends TodoState {}

class TodosFailed extends TodoState {}

class TodosSuccess extends TodoState {
  final List<Todo?>? todos;

  const TodosSuccess({
    this.todos,
  });

  /* factory TodosSuccess.fromMap(Map<String, dynamic> map) {
    return TodosSuccess(
        /* todos: User.fromMap(map), */
        );
  }

  factory TodosSuccess.fromJson(String source) => TodosSuccess.fromMap(json.decode(source)); */

  /* Map<String, dynamic>? toMap() => todos!.toMap(); */
}

class AddTodoLoading extends TodoState {}

class AddTodoSuccess extends TodoState {
  final Todo todo;
  const AddTodoSuccess({required this.todo});
}

class AddTodoFail extends TodoState {}

class UpdateTodoLoading extends TodoState {}

class UpdateTodoSuccess extends TodoState {
  final Todo todo;
  const UpdateTodoSuccess({required this.todo});
}

class UpdateTodoFail extends TodoState {}

class DeleteTodoLoading extends TodoState {}

class DeleteTodoSuccess extends TodoState {
  final int id;
  const DeleteTodoSuccess({required this.id});
}

class DeleteTodoFail extends TodoState {}
