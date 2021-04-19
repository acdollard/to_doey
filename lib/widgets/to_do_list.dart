import 'package:flutter/material.dart';
import 'to_do_list_item.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: [
        ToDoListItem(),
      ],
    );
  }
}