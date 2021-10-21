part of 'update_todo_cubit.dart';

@freezed
class UpdateTodoState with _$UpdateTodoState {
  const factory UpdateTodoState.updateTodoInitial() = UpdateTodoInitial;
  const factory UpdateTodoState.updateTodoLoading() = UpdateTodoLoading;
  const factory UpdateTodoState.updateTodoSuccess({required Todo todo}) = UpdateTodoSuccess;
  const factory UpdateTodoState.updateTodoFail() = UpdateTodoFail;
}
