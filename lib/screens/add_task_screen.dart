import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 50, right: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            autocorrect: true,
            onChanged: (value) {
              task = value;
            },
          ),
          FlatButton(
            onPressed: () {},
            textColor: Colors.white,
            color: Colors.lightBlueAccent,
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
