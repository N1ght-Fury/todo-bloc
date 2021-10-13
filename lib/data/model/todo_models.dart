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
  /* List<Todo?>? todos;
  bool success;

  GetTodosResult({
    this.todos,
    required this.success,
  });

  GetTodosResult.fromJson({required List<dynamic> json, required bool success})
      : todos = json.map((e) => e == null ? null : Todo.fromJson(e)).toList(),
        success = success;

  Map<String, dynamic> toJson() => {
        'todos': todos,
        'success': success,
      }; */
}

@freezed
class CreateTodoResult with _$CreateTodoResult {
  factory CreateTodoResult({Todo? todo, required bool success}) = _CreateTodoResult;
  factory CreateTodoResult.fromJson(Map<String, dynamic> json) => _$CreateTodoResultFromJson(json);
  /* Todo? todo;
  bool success;

  CreateTodoResult({
    this.todo,
    required this.success,
  });

  CreateTodoResult.fromJson({required Map<String, dynamic> json, required bool success})
      : todo = Todo.fromJson(json),
        success = success;

  Map<String, dynamic> toJson() => {
        'todo': todo,
        'success': success,
      }; */
}

@freezed
class UpdateTodoResult with _$UpdateTodoResult {
  factory UpdateTodoResult({Todo? todo, required bool success}) = _UpdateTodoResult;
  factory UpdateTodoResult.fromJson(Map<String, dynamic> json) => _$UpdateTodoResultFromJson(json);
  /* Todo? todo;
  bool success;

  UpdateTodoResult({
    this.todo,
    required this.success,
  });

  UpdateTodoResult.fromJson({required Map<String, dynamic> json, required bool success})
      : todo = Todo.fromJson(json),
        success = success;

  Map<String, dynamic> toJson() => {
        'todo': todo,
        'success': success,
      }; */
}
