import 'dart:convert';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../data/services/api.dart';
import '../../data/model/user_models.dart';

import 'todo_cubit.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> with HydratedMixin {
  final Api api;

  UserCubit({required this.api}) : super(UserInitial());

  Future<void> login(int id) async {
    emit(UserProcessing());

    SignInUserResult userResult = await api.signInUser(id: id);

    if (userResult.success) {
      emit(UserLoggedIn(loggedInUser: userResult.user));
    } else {
      emit(UserFailedToLogin());
    }
  }

  Future<void> logout() async {
    emit(UserInitial());
  }

  @override
  UserState fromJson(Map<String, dynamic> json) {
    print('inside fromJson');
    return UserLoggedIn.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    print('inside toJson');
    print(state is UserLoggedIn);
    if (state is UserLoggedIn) {
      state.toJson();
    }
    return null;
  }
}
