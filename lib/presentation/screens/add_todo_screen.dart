import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import '../../data/model/todo_models.dart';
import '../../logic/cubit/todo_cubit.dart';
import '../../logic/cubit/user_cubit.dart';

class AddTodoScreen extends StatefulWidget {
  final Todo? todo;
  const AddTodoScreen({
    Key? key,
    this.todo,
  }) : super(key: key);

  @override
  _AddTodoScreenState createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  Todo? todo;

  TextEditingController titleController = TextEditingController();

  void _showWarningDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Some changes have been made. Exit without saving?'),
          actionsAlignment: MainAxisAlignment.center,
          actions: <Widget>[
            ElevatedButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context, false);
              },
            ),
            ElevatedButton(
              child: Text('No'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    /* ModalRoute.of(context)!.settings.arguments as Todo */
    if (widget.todo != null) {
      todo = Todo.fromJson(widget.todo!.toMap());
      titleController.text = todo!.title;
    } else {
      todo = Todo(userId: (context.read<UserCubit>().state as UserLoggedIn).loggedInUser!.id, title: '', completed: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo != null ? 'Edit Todo' : 'Add Todo'),
        actions: [
          widget.todo != null
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                )
              : Container(),
        ],
      ),
      body: BlocConsumer<TodoCubit, TodoState>(
        listener: (context, state) {
          if (state is AddTodoFail) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Failed to add todo'),
                duration: Duration(milliseconds: 3000),
              ),
            );
          } else if (state is AddTodoSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is AddTodoLoading,
            opacity: 0.5,
            progressIndicator: const CircularProgressIndicator(),
            child: Padding(
              padding: EdgeInsets.only(top: 15.0, right: 10.0, left: 10.0),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 15),
                  TextField(
                    controller: titleController,
                    onChanged: (String value) {
                      todo!.title = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Text('Is Completed: '),
                        SizedBox(
                          width: 10,
                        ),
                        Switch(
                          value: todo!.completed,
                          onChanged: (bool value) {
                            setState(() {
                              todo!.completed = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<TodoCubit>().addTodo(todo: todo!);
                    },
                    child: Text(widget.todo != null ? 'Edit' : 'Add'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
