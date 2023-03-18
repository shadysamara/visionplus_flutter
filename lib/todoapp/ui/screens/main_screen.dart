import 'package:flutter/material.dart';
import 'package:vision_flutter/todoapp/ui/screens/all_tasks.dart';
import 'package:vision_flutter/todoapp/ui/screens/incomplete_tasks.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void toggleTask() {
    setState(() {});
  }

  String getName() {
    return "omar";
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
        actions: [
          IconButton(
              onPressed: () {
                toggleTask();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: InCompleteTasksScreen(toggleTask),
    );
  }
}
