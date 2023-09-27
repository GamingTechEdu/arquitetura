import 'package:flutter/material.dart';
import './task.dart';

void main() {
  final tasks = [
    Task('Buy groceries'),
    Task('Walk the dog'),
    Task('Finish homework'),
  ];

      runApp(TaskList(tasks));


}

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  void _toggleTaskCompletion(Task task) {
    setState(() {
      task.toggleCompletion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task List'),
        ),
        body: ListView.builder(
          itemCount: widget.tasks.length,
          itemBuilder: (context, index) {
            final task = widget.tasks[index];
            return ListTile(
              title: Text(task.title),
              leading: Checkbox(
                value: task.isCompleted,
                onChanged: (_) => _toggleTaskCompletion(task),
              ),
            );
          },
        ),
      ),
    );
  }
}
