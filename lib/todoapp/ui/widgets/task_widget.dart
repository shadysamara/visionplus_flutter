import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vision_flutter/todoapp/models/task.dart';

class TaskWidget extends StatefulWidget {
  Task task;
  Function? fun;
  TaskWidget(this.task, [this.fun]);

  @override
  State<TaskWidget> createState() => TaskWidgetState();
}

class TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Checkbox(
              value: widget.task.isComplete,
              onChanged: (v) {
                log(v!.toString());
                widget.task.isComplete = !widget.task.isComplete;
                widget.fun!();
                setState(() {});
              }),
          Text(widget.task.name)
        ],
      ),
    );
  }
}
