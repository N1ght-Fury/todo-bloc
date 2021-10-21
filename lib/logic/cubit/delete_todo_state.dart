part of 'delete_todo_cubit.dart';

@freezed
class DeleteTodoState with _$DeleteTodoState {
  const factory DeleteTodoState.deleteTodoInitial() = DeleteTodoInitial;
  const factory DeleteTodoState.deleteTodoLoading() = DeleteTodoLoading;
  const factory DeleteTodoState.deleteTodoSuccess({required int id}) = DeleteTodoSuccess;
  const factory DeleteTodoState.deleteTodoFail() = DeleteTodoFail;
}
