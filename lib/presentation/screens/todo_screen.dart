import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../widgets/custom_drawer.dart';
import '../../logic/cubit/todo_cubit.dart';
import '../../logic/cubit/user_cubit.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(userState: context.read<UserCubit>().state),
      child: Scaffold(
        onDrawerChanged: (bool b) {},
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: const Text('My Todos'),
          actions: [
            IconButton(icon: Icon(Icons.add), onPressed: () => Navigator.pushNamed(context, '/addTodo')),
          ],
        ),
        body: BlocConsumer<TodoCubit, TodoState>(
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
            return LoadingOverlay(
              isLoading: todoState is TodosLoading,
              opacity: 0.5,
              progressIndicator: const CircularProgressIndicator(),
              child: todoState is TodosSuccess
                  ? ListView.builder(
                      itemCount: todoState.todos!.length,
                      itemBuilder: (context, index) => Container(
                        height: 100,
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(todoState.todos![index]!.id.toString()),
                                Text(todoState.todos![index]!.title.toString()),
                                Text(todoState.todos![index]!.completed.toString()),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(),
            );
          },
        ),
      ),
    );
  }
}
