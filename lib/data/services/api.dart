import 'dart:convert';
import 'package:dio/dio.dart';

import '../model/todo_models.dart';
import '../model/user_models.dart';

class Api {
  var dio = Dio();

  Future<SignInUserResult> signInUser({required int id}) async {
    User? user;
    bool success = true;

    try {
      var response = await dio.get('https://jsonplaceholder.typicode.com/users/$id');
      user = User.fromJson(response.toString());
    } catch (e) {
      success = false;
    }

    return SignInUserResult.fromJson(user: user, success: success);
  }

  Future<GetTodosResult> getUserTodos({required int userId}) async {
    bool success = true;
    Response? response;

    try {
      response = await dio.get('https://jsonplaceholder.typicode.com/todos?userId=$userId');
    } catch (e) {
      success = false;
    }

    return GetTodosResult.fromJson(json: response!.data!, success: success);
  }
}
