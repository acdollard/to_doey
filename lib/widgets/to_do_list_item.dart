import 'package:flutter/material.dart';

class ToDoListItem extends StatelessWidget {

  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;

  ToDoListItem({this.taskTitle, this.isChecked , this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
      ),
      activeColor: Colors.lightGreenAccent,
      onChanged: checkboxCallback,
    );
  }
}