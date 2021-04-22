import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'to_do_list_item.dart';
import '../models/task_data.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return ToDoListItem(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            },
            removeTaskCallback: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.tasks.length,
      );
    });
  }
}
