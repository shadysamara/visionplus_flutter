import 'package:flutter/widgets.dart';

class Student {
  String? name;
  String? university;
  bool? isMale;
  List<Parent>? parents;
  Student({this.name, this.university, this.isMale, this.parents});
}

class Parent {
  String name;
  String age;
  Parent(this.age, this.name);
}
