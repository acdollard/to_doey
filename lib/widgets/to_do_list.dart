import 'package:flutter/material.dart';
import 'to_do_list_item.dart';
import '../models/task.dart';

class ToDoList extends StatelessWidget {

  final List<Task> taskList;
  Function taskToggler;

  ToDoList({this.taskList, this.taskToggler});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return ToDoListItem(
          taskTitle: taskList[index].name,
          isChecked: taskList[index].isDone,
          checkboxCallback: (checkboxState) {
            taskToggler(index);
          }
      );
    },
    itemCount: taskList.length,
    );
  }
}