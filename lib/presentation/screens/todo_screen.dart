import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../../data/model/todo_models.dart';
import '../../logic/cubit/todo_cubit.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/todo_card.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<TodoScreen> {
  List<Todo?>? todos = [];

  void showSnackMessag(context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(milliseconds: 3000),
      ),
    );
  }

  /* @override
  void initState() {
    super.initState();
    context.read<TodoCubit>().getTodos();
  } */

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit, TodoState>(
      listener: (context, state) {
        if (state is TodosFailed) {
          showSnackMessag(context, message: 'Failed to get todos');
        } else if (state is TodosSuccess) {
          todos = state.todos;
        } else if (state is AddTodoSuccess) {
          showSnackMessag(context, message: 'Successfully created todo!');
          todos!.add(state.todo);
        } else if (state is UpdateTodoSuccess) {
          showSnackMessag(context, message: 'Successfully updated todo!');
          todos![todos!.indexWhere((todo) => todo!.id == state.todo.id)] = state.todo;
        } else if (state is DeleteTodoSuccess) {
          showSnackMessag(context, message: 'Successfully deleted todo!');
          todos!.removeWhere((todo) => todo!.id == state.id);
        }
      },
      builder: (context, state) {
        TodoState todoState = context.watch<TodoCubit>().state;

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
