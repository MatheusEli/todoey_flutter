import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import '../models/task.dart';

List<Task> tasks = [];

class TasksList extends StatefulWidget {
  void addTask(Task newTask) {
    tasks.add(newTask);
  }

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[index].name, tasks[index].isDone,
            (bool? checkboxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        });
      },
      itemCount: tasks.length,
    );
  }
}
