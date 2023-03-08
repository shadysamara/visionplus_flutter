import 'package:flutter/material.dart';
import 'package:vision_flutter/student.dart';
import 'package:vision_flutter/student_widget.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  /*
Assignment
1- define class called Employee with the following attributes:
- imageUrl as string
- name as String
- salary as double
- sons as List of Son class (name, age, isMale)

2- create list of employees that contains 5 employees with dummy data
3- convert the list of employees to list pf widgets based on the image in the board
  */

  /*
  define class called student with the following attributes:
  - name as string
  - unuversity as string
  - isMale as bool

  create list of student that contains 5 students with dummy data

  create listview in your page and display all users details

  */
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
            itemCount: students.length,
            itemBuilder: (context, index) {
              return StudentWidget(students[index]);
            })
        /*Column(children: [
          ...students.map((element) => StudentWidget(element)).toList()
        ])*/
        );
  }
}
