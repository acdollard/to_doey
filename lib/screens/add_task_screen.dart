import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {

  Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  String userInput;
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              ElevatedButton(
                onPressed: () {
                  userInput = _controller.text;
                  widget.addTaskCallback(userInput);
                  _controller.clear();
                  print(userInput);
                },
                child: Text('Add'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.lightGreenAccent),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
