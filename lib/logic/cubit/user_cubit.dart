import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../data/model/user_models.dart';
import '../../data/services/api.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

@singleton
class UserCubit extends Cubit<UserState> with HydratedMixin {
  final Api api;

  UserCubit(this.api) : super(UserInitial()) {
    Logger().log(Level.warning, 'CURRENT USER STATE IS $state');
  }

  Future<void> login(int id) async {
    emit(UserProcessing());

    SignInUserResult userResult = await api.signInUser(id: id);

    if (userResult.success) {
      emit(UserLoggedIn(loggedInUser: userResult.user!));
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

    return UserState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    Logger().log(Level.info, 'Inside User Cubit -> toJson function');
    if (state is UserLoggedIn) {
      Logger().log(Level.info, 'Current user info is: ${UserState.toMap(state).toString()}');
      return UserState.toMap(state);
    }
    Logger().log(Level.info, 'Setting user info to null!');
    return {};
  }
}
