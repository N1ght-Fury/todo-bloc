// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'completed': instance.completed,
    };

_$_GetTodosResult _$$_GetTodosResultFromJson(Map<String, dynamic> json) =>
    _$_GetTodosResult(
      todos: (json['todos'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$_GetTodosResultToJson(_$_GetTodosResult instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'success': instance.success,
    };

_$_CreateTodoResult _$$_CreateTodoResultFromJson(Map<String, dynamic> json) =>
    _$_CreateTodoResult(
      todo: json['todo'] == null
          ? null
          : Todo.fromJson(json['todo'] as Map<String, dynamic>),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$_CreateTodoResultToJson(_$_CreateTodoResult instance) =>
    <String, dynamic>{
      'todo': instance.todo,
      'success': instance.success,
    };

_$_UpdateTodoResult _$$_UpdateTodoResultFromJson(Map<String, dynamic> json) =>
    _$_UpdateTodoResult(
      todo: json['todo'] == null
          ? null
          : Todo.fromJson(json['todo'] as Map<String, dynamic>),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$_UpdateTodoResultToJson(_$_UpdateTodoResult instance) =>
    <String, dynamic>{
      'todo': instance.todo,
      'success': instance.success,
    };
