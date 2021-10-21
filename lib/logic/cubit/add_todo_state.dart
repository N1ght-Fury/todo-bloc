part of 'add_todo_cubit.dart';

@freezed
class AddTodoState with _$AddTodoState {
  const factory AddTodoState.addTodoInitial() = AddTodoInitial;
  const factory AddTodoState.addTodoLoading() = AddTodoLoading;
  const factory AddTodoState.addTodoSuccess({required Todo todo}) = AddTodoSuccess;
  const factory AddTodoState.addTodoFail() = AddTodoFail;
}
