import 'package:flutter/material.dart';
import '../../data/model/todo_models.dart';
import '../screens/add_todo_screen.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;

  const TodoCard({
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddTodoScreen(todo: todo),
          ),
        );
      },
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 6, right: 6),
            height: 110.0,
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    color: todo.completed ? Colors.green : Colors.red,
                    width: 5,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.only(left: 10, bottom: 5),
                            child: Text(
                              'Id: ${todo.id}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff717D8D),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Title: ${todo.title}',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xff707070),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'State: ${todo.completed ? 'Completed' : 'Pending'}',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xff707070),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
