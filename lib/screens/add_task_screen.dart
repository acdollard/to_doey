import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  String userInput;
  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add Task',
                style: TextStyle(color: Colors.lightGreenAccent, fontSize: 22),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: TextField(
                  controller: _controller,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreenAccent),
                    ),
                  ),
                ),
              ),
              Consumer<TaskData>(
                builder: ((context, taskData, child) {
                  return ElevatedButton(
                    onPressed: () {
                      userInput = _controller.text;
                      taskData.addTask(userInput);
                      _controller.clear();
                      Navigator.pop(context);
                    },
                    child: Text('Add'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.lightGreenAccent),
                    ),
                  );
                })
              )
            ],
          ),
        ),
      ),
    );
  }
}
