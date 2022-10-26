import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/screens/task_screen.dart';

import 'models/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  void toggleIsDone(index) {
    tasks[index].isDone = !tasks[index].isDone;
    notifyListeners();
  }
}
