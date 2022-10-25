import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  late final List<Task> tasks;

  TasksList(this.tasks);

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
        return TaskTile(widget.tasks[index].name, widget.tasks[index].isDone,
            (bool? checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        });
      },
      itemCount: widget.tasks.length,
    );
  }
}
