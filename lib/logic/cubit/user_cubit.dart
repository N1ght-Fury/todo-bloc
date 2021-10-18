import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:todo_bloc/locator.dart';

import '../../data/model/user_models.dart';
import '../../data/services/api.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> with HydratedMixin {
  final Api api = getIt<Api>();

  UserCubit() : super(UserInitial()) {
    Logger().log(Level.warning, 'CURRENT USER STATE IS $state');
  }

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
    /* await HydratedBloc.storage.clear(); */
    emit(UserInitial());
  }

  @override
  UserState fromJson(Map<String, dynamic> json) {
    Logger().log(Level.info, 'Inside User Cubit -> fromJson function');
    Logger().log(Level.info, 'Json is: $json');

    if (json.isEmpty) {
      return UserInitial();
    }

    return UserLoggedIn.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    Logger().log(Level.info, 'Inside User Cubit -> toJson function');
    if (state is UserLoggedIn) {
      Logger().log(Level.info, 'Current user info is: ${state.toMap().toString()}');
      return state.toMap();
    }
    Logger().log(Level.info, 'Setting user info to null!');
    return {};
  }
}
