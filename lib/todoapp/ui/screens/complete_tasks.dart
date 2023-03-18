import 'package:flutter/material.dart';
import 'package:vision_flutter/todoapp/data/fake_data.dart';
import 'package:vision_flutter/todoapp/ui/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasks.where((element) => element.isComplete == true).length,
        itemBuilder: (context, index) {
          return TaskWidget(tasks
              .where((element) => element.isComplete == true)
              .toList()[index]);
        });
  }
}
