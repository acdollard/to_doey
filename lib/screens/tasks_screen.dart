import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {

   bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightGreenAccent[400],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'Todoey',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700
                      )
                  ),
                  Text(
                    '12 Tasks',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0
                    ),
                  ),

                ],
              )
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
                ),
              child: ListView(
                padding: EdgeInsets.all(15.0),
                children: [
                  CheckboxListTile(
                      title: Text('Is Flutter sexy?'),
                      value: _value,
                      onChanged: (){},
                  ),
                ],
              )
            ),
          ),
        ],
      )
    );
  }
}






