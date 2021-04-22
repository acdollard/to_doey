import 'package:flutter/material.dart';

class ToDoListItem extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function removeTaskCallback;

  ToDoListItem({this.taskTitle, this.isChecked, this.checkboxCallback, this.removeTaskCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CheckboxListTile(
        value: isChecked,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        activeColor: Colors.lightGreenAccent,
        onChanged: checkboxCallback,
      ),
      onLongPress: removeTaskCallback,
    );
  }
}
