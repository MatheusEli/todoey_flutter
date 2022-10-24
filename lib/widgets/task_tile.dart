import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final void Function(bool?) toggle;

  TaskTile(this.taskTitle, this.isChecked, this.toggle);
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
