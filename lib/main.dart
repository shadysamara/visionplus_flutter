import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vision_flutter/employee.dart';
import 'package:vision_flutter/employee_widget.dart';
import 'package:vision_flutter/student.dart';
import 'package:vision_flutter/student_widget.dart';
import 'package:vision_flutter/todoapp/ui/screens/main_screen.dart';

void main() {
  runApp(MaterialApp(home: MainScreen()));
}

class MyApp extends StatelessWidget {
  /*
Assignment
1- define class called Employee with the following attributes:
- imageUrl as string
- name as String
- salary ale
- sons as List of Son class (name, age, isMale)

2- create list of employees that contains 5 employees with dummy data
3- convert the list of employees to list pf widgets based on the image in the board
  */

  /*s doub
  define class called student with the following attributes:
  - name as string
  - unuversity as string
  - isMale as bool

  create list of student that contains 5 students with dummy data

  create listview in your page and display all users details

  */
  List<Employee> employees = [
    Employee(
        "Omar",
        "https://images.unsplash.com/photo-1611485988300-b7530defb8e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
        900,
        [Son("ali", 9, true), Son("majd", 1, true)]),
    Employee(
        "Ahmed",
        "https://images.unsplash.com/photo-1591084728795-1149f32d9866?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
        700,
        [Son("jasan", 9, true), Son("farah", 1, false)]),
    Employee(
        "Shaker",
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
        700, [])
  ];
  List<Student> students = [
    Student(name: "Omar Ahmed", university: "Islamic University", isMale: true),
    Student(name: "Majd Ali", university: "Islamic University", isMale: true),
    Student(name: "Ali Hasan", university: "AlAzhar University", isMale: true),
    Student(
        name: "Farah Ramy", university: "Islamic University", isMale: false),
    Student(
        name: "Fatma Ahmed", university: "AlAzhar University", isMale: false),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('Lecture 1')),
        body: ListView.builder(
            itemCount: employees.length,
            itemBuilder: (context, index) {
              return EmployeeWidget(employees[index], true);
            })
        /*Column(children: [
          ...students.map((element) => StudentWidget(element)).toList()
        ])*/
        );
  }
}

class MyAppStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppStatefulState();
  }
}

class MyAppStatefulState extends State<StatefulWidget> {
  List<Employee> employees = [
    Employee(
        "Omar",
        "https://images.unsplash.com/photo-1611485988300-b7530defb8e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
        900,
        [Son("ali", 9, true), Son("majd", 1, true)]),
    Employee(
        "Ahmed",
        "https://images.unsplash.com/photo-1591084728795-1149f32d9866?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
        700,
        [Son("jasan", 9, true), Son("farah", 1, false)]),
    Employee(
        "Shaker",
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
        700, [])
  ];
  List<Student> students = [
    Student(name: "Omar Ahmed", university: "Islamic University", isMale: true),
    Student(name: "Majd Ali", university: "Islamic University", isMale: true),
    Student(name: "Ali Hasan", university: "AlAzhar University", isMale: true),
    Student(
        name: "Farah Ramy", university: "Islamic University", isMale: false),
    Student(
        name: "Fatma Ahmed", university: "AlAzhar University", isMale: false),
  ];
  int num = 0;
  int selectedIndex = 23;
  Employee? selectedEmployee;
  String selectedEmplyeeName = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Lecture 1')),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         num.toString(),
      //         style: TextStyle(fontSize: 50),
      //       ),
      //       ElevatedButton(
      //           onPressed: () {
      //             setState(() {
      //               num++;
      //             });
      //           },
      //           child: Text("increment"))
      //     ],
      //   ),
      // ),
      // body: ListView.builder(
      //     itemCount: employees.length,
      //     itemBuilder: (context, index) {
      //       return InkWell(
      //           onTap: () {
      //             selectedIndex = index;
      //             setState(() {});
      //           },
      //           child:
      //               EmployeeWidget(employees[index], index == selectedIndex));
      //     })
      body: ListView(
          children: employees
              .map((e) => InkWell(
                  onTap: () {
                    selectedEmplyeeName = e.name;
                    setState(() {});
                  },
                  child: EmployeeWidget(e, selectedEmplyeeName == e.name)))
              .toList()),
    );
  }
}
