import 'package:flutter/material.dart';
import 'package:vision_flutter/employee.dart';

class EmployeeWidget extends StatelessWidget {
  Employee employee;
  bool isSelected;
  EmployeeWidget(this.employee, this.isSelected);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: isSelected ? Colors.grey : Colors.white,
          border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                employee.image,
                fit: BoxFit.cover,
                height: 80,
                width: 80,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(employee.name),
                    Text(employee.salary.toString() + " \$"),
                    const Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    ...employee.sons.map((e) {
                      return Text(
                          "Name: ${e.name} , Age: ${e.age}, Gender: ${e.isMale ? 'male' : 'female'}");
                    }).toList()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
