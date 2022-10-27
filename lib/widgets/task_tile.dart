import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../models/task_data.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final void Function(bool?) toggle;
  final void Function() longPressCallback;

  TaskTile(this.taskTitle, this.isChecked, this.toggle, this.longPressCallback);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: isChecked
            ? const TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggle,
      ),
    );
  }
}
//
// (bool? checkboxState) {
// setState(() {
// isChecked = checkboxState ?? true;
// });
// }
