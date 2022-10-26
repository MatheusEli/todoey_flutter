import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/main.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import '../models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void addTask(Task newTask) {
      Provider.of<Data>(context).addTask(newTask);
    }

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          Provider.of<Data>(context).tasks[index].name,
          Provider.of<Data>(context).tasks[index].isDone,
          (bool? checkboxState) {
            Provider.of<Data>(context, listen: false).toggleIsDone(index);
          },
        );
      },
      itemCount: Provider.of<Data>(context).tasks.length,
    );
  }
}
