//Enum
void main() {
  final Employee1 = Employee('nafis', EmployeeType.cse);
  final Employee2 = Employee('rahim', EmployeeType.eee);
  final Employee3 = Employee('karim', EmployeeType.ipe);
  Employee1.something();
  Employee2.something();
  Employee3.something();
}

enum EmployeeType {
  cse(12000),
  eee(3000),
  ipe(1000);

  final int salary;
  const EmployeeType(this.salary);
}

// enum used to improve bugs and error
class Employee {
  String name = '';
  final EmployeeType type;
  Employee(this.name, this.type);

  void something() {
    print(type.salary);
  }
}
