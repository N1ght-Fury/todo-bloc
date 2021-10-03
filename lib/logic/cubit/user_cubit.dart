import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:todo_bloc/data/services/api.dart';
import 'package:todo_bloc/logic/cubit/todo_cubit.dart';

import '../../data/model/models.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> /* with HydratedMixin */ {
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

  @override
  UserState fromJson(Map<String, dynamic> json) {
    return UserLoggedIn.fromMap(json);
  }

  @override
  Map<String, dynamic> toJson(UserState state) {
    if (state.user != null) {
      return state.user!.toMap();
    }
    return {};
  }
}
