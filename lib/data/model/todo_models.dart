import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'todo_models.freezed.dart';
part 'todo_models.g.dart';

@freezed
class Todo with _$Todo {
  factory Todo({int? id, int? userId, required String title, required bool completed}) = _Todo;
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

@freezed
class GetTodosResult with _$GetTodosResult {
  factory GetTodosResult({List<Todo?>? todos, required bool success}) = _GetTodosResult;
  factory GetTodosResult.fromJson(Map<String, dynamic> json) => _$GetTodosResultFromJson(json);
}

@freezed
class CreateTodoResult with _$CreateTodoResult {
  factory CreateTodoResult({Todo? todo, required bool success}) = _CreateTodoResult;
  factory CreateTodoResult.fromJson(Map<String, dynamic> json) => _$CreateTodoResultFromJson(json);
}

@freezed
class UpdateTodoResult with _$UpdateTodoResult {
  factory UpdateTodoResult({Todo? todo, required bool success}) = _UpdateTodoResult;
  factory UpdateTodoResult.fromJson(Map<String, dynamic> json) => _$UpdateTodoResultFromJson(json);
}
