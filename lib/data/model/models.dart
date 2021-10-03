import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:todo_bloc/logic/cubit/user_cubit.dart';

class User {
  int? id;
  String nameSurname;
  String email;

  User({
    this.id,
    required this.nameSurname,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nameSurname': nameSurname,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    print(map);
    return User(
      id: map['id'],
      nameSurname: map['name'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(id: $id, nameSurname: $nameSurname, email: $email)';
}

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

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source));

  @override
  String toString() => 'Todo(id: $id, userId: $userId, title: $title, completed: $completed)';
}

class SignInUserResult {
  User? user;
  bool success;

  SignInUserResult({
    this.user,
    required this.success,
  });

  SignInUserResult.fromJson({User? user, required bool success})
      : user = user,
        success = success;

  Map<String, dynamic> toJson() => {
        'user': user,
        'success': success,
      };
}

class GetTodosResult {
  List<Todo?>? todos;
  bool success;

  GetTodosResult({
    this.todos,
    required this.success,
  });

  GetTodosResult.fromJson({required Map<String, dynamic> json, required bool success})
      : todos = (json as List).map((e) => e == null ? null : Todo.fromJson(e)).toList(),
        success = success;

  Map<String, dynamic> toJson() => {
        'todos': todos,
        'success': success,
      };
}
