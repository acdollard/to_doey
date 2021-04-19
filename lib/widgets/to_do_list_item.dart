import 'package:flutter/material.dart';

class ToDoListItem extends StatefulWidget {
  @override
  _ToDoListItemState createState() => _ToDoListItemState();
}

class _ToDoListItemState extends State<ToDoListItem> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      title: Text(
          'Bootay!',
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
      ),
      activeColor: Colors.lightGreenAccent,
      onChanged: (bool newValue) {
        setState(() {
          isChecked = newValue;
        });
      },
    );
  }
}