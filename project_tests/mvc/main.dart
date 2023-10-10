import 'package:flutter/material.dart';
import 'task_model.dart';
import 'task_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TaskModel model = TaskModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Tarefas'),
        ),
        body: TaskListView(model: model),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AddTaskDialog(model: model);
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
