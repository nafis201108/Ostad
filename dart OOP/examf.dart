class Student {
  String Name = '';
  String adress = '';
  int roll = 0;
  Student(this.Name, this.roll, this.adress);

  void sayHello() {
    print('Hello, my name is $Name');
  }

  int getRollSquared() {
    return roll * roll;
  }
}

void main() {
  Student student = Student('Ostad', 3, 'Baridhara,Dhaka');
  // print(student.Name);
  // print(student.roll);
  // print(student.adress);
  student.sayHello();
  int rollsquared = student.getRollSquared();
  print("RollSquared=$rollsquared");
}
