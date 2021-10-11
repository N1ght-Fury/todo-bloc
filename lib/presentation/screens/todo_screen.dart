import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import '../../data/model/todo_models.dart';
import '../widgets/todo_card.dart';

import '../widgets/custom_drawer.dart';
import '../../logic/cubit/todo_cubit.dart';
import '../../logic/cubit/user_cubit.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<TodoScreen> {
  List<Todo?>? todos = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit, TodoState>(
      listener: (context, state) {
        if (state is TodosFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to get todos'),
              duration: Duration(milliseconds: 3000),
            ),
          );
        }
      },
      builder: (context, state) {
        TodoState todoState = context.watch<TodoCubit>().state;

        if (todoState is TodosSuccess) {
          todos = todoState.todos;
        } else if (todoState is AddTodoSuccess) {
          todos!.add(todoState.todo);
        }

        print(todoState);
        print(todos!.length);

        return Scaffold(
          drawer: CustomDrawer(context),
          appBar: AppBar(
            title: const Text('My Todos'),
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => Navigator.pushNamed(context, '/addTodo'),
              ),
            ],
          ),
          body: LoadingOverlay(
            isLoading: todoState is TodosLoading,
            opacity: 0.5,
            progressIndicator: const CircularProgressIndicator(),
            child: todoState is! TodosFailed
                ? ListView.builder(
                    itemCount: todos!.length,
                    itemBuilder: (context, index) => TodoCard(
                      todo: todos![index]!,
                    ),
                  )
                : Container(),
          ),
        );
      },
    );
  }
}
/* 
BlocConsumer<TodoCubit, TodoState>(
          listener: (context, state) {
            if (state is TodosFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Failed to get todos'),
                  duration: Duration(milliseconds: 3000),
                ),
              );
            }
          },
          builder: (context, state) {
            TodoState todoState = context.watch<TodoCubit>().state;

            if (todoState is TodosSuccess) {
              todos = todoState.todos;
            } else if (todoState is AddTodoSuccess) {
              todos!.add(todoState.todo);
            }

            return LoadingOverlay(
              isLoading: todoState is TodosLoading,
              opacity: 0.5,
              progressIndicator: const CircularProgressIndicator(),
              child: todoState is TodosSuccess
                  ? ListView.builder(
                      itemCount: todoState.todos!.length,
                      itemBuilder: (context, index) => TodoCard(
                        todo: todos![index]!,
                      ),
                    )
                  : Container(),
            );
          },
        ), */