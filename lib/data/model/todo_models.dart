import 'dart:convert';

class Todo {
  int? id;
  int? userId;
  String title;
  bool completed;

  Todo({
    this.id,
    this.userId,
    required this.title,
    required this.completed,
  });

  Map<String, dynamic> toMapWithoutId() {
    return {
      'userId': userId,
      'title': title,
      'completed': completed,
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'completed': completed,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'],
      userId: map['userId'],
      title: map['title'],
      completed: map['completed'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(Map<String, dynamic> source) => Todo.fromMap(source);

  @override
  String toString() => 'Todo(id: $id, userId: $userId, title: $title, completed: $completed)';
}

class GetTodosResult {
  List<Todo?>? todos;
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
      };
}

class CreateTodoResult {
  Todo? todo;
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
      };
}

class UpdateTodoResult {
  Todo? todo;
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
      };
}
