class Employee {
  String image;
  String name;
  double salary;
  List<Son> sons;
  Employee(this.name, this.image, this.salary, this.sons);
}

class Son {
  String name;
  int age;
  bool isMale;
  Son(this.name, this.age, this.isMale);
}
