import 'package:flutter/material.dart';
import 'package:vision_flutter/student.dart';

class StudentWidget extends StatelessWidget {
  Student student;
  StudentWidget(this.student);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Name: " + (student.name ?? "Not Fined")),
          Text("Unuversity: " + student.university!),
          Text("Gender: " + ((student.isMale!) ? "Male" : "Female")),
        ],
      ),
    );
  }
}
