import 'package:flutter/material.dart';
import 'package:vision_flutter/todoapp/data/fake_data.dart';
import 'package:vision_flutter/todoapp/ui/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasks[index]);
        });
  }
}
