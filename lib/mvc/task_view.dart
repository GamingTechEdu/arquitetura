import 'package:flutter/material.dart';
import 'task_model.dart';

class TaskListView extends StatelessWidget {
  final TaskModel model;

  TaskListView({required this.model});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model.tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(model.tasks[index]),
        );
      },
    );
  }
}

class AddTaskDialog extends StatefulWidget {
  final TaskModel model;

  AddTaskDialog({required this.model});

  @override
  _AddTaskDialogState createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Adicionar Tarefa'),
      content: TextField(
        controller: _taskController,
        decoration: InputDecoration(labelText: 'Tarefa'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            final task = _taskController.text;
            if (task.isNotEmpty) {
              widget.model.addTask(task);
              Navigator.pop(context);
            }
          },
          child: Text('Adicionar'),
        ),
      ],
    );
  }
}
