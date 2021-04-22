import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData with ChangeNotifier {

    List<Task> _tasks = [
      Task(name: 'BJJ'),
      Task(name: 'clean kitchen'),
      Task(name: 'prep dinner')
    ];

    UnmodifiableListView<Task> get tasks {
      return UnmodifiableListView(_tasks);
    }

    void addTask(String newTaskTitle) {
      final newTask = Task(name: newTaskTitle);
      _tasks.add(newTask);
      notifyListeners();
    }

    void updateTask(Task task) {
      task.toggleDone();
      notifyListeners();
    }

    void deleteTask(Task task) {
      _tasks.remove(task);
      notifyListeners();
    }
}