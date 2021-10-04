import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  Widget build(BuildContext homeScreenContext) {
    return BlocProvider(
      create: (context) => TodoCubit(userState: context.read<UserCubit>().state),
      child: Scaffold(
        drawer: Builder(
          builder: (context) {
            return CustomDrawer();
          }
        ),
        appBar: AppBar(
          title: const Text('My Todos'),
          actions: [
            IconButton(icon: Icon(Icons.settings), onPressed: () => Navigator.pushNamed(context, '/settings')),
          ],
        ),
        body: BlocConsumer<TodoCubit, TodoState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    (context.read<UserCubit>().state as UserLoggedIn).loggedInUser!.email.toString(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
