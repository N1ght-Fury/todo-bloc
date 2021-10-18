import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:todo_bloc/logic/cubit/add_todo_cubit.dart';

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

  @override
  void initState() {
    super.initState();
    context.read<TodoCubit>().getTodos();
  }

  @override
  Widget build(BuildContext context) {
    TodoState state = context.watch<TodoCubit>().state;
    return Scaffold(
      drawer: CustomDrawer(context),
      appBar: AppBar(
        title: const Text('My Todos'),
        actions: [
          BlocProvider<AddTodoCubit>(
            create: (context) => AddTodoCubit(),
            child: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => Navigator.pushNamed(context, '/addTodo'),
                );
              },
            ),
          ),
        ],
      ),
      body: LoadingOverlay(
        isLoading: state is TodosLoading,
        opacity: 0.5,
        progressIndicator: const CircularProgressIndicator(),
        child: state is! TodosFailed
            ? ListView.builder(
                itemCount: (state is TodosSuccess) ? state.todos!.length : 0,
                itemBuilder: (context, index) => TodoCard(
                  todo: (state as TodosSuccess).todos![index]!,
                ),
              )
            : Container(),
      ),
    );
  }
}
