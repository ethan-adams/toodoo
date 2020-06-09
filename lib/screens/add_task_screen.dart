import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toodoo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String taskTitle;

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
              taskTitle = value;
            },
          ),
          FlatButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addNewTask(taskTitle);
              Navigator.pop(context);
            },
            textColor: Colors.white,
            color: Colors.lightBlueAccent,
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
