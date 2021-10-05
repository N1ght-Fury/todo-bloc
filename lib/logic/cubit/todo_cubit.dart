import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../../data/model/todo_models.dart';
import 'user_cubit.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  final UserState userState;
  TodoCubit({required this.userState}) : super(TodoInitial()) {
    Logger().log(Level.info, 'Inside TodoCubit consructor');
  }
}
