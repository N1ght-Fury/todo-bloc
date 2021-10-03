import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_bloc/data/model/models.dart';
import 'package:todo_bloc/logic/cubit/user_cubit.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial());
}
