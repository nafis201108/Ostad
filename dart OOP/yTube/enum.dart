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
  cse,
  eee,
  ipe;
}

// enum used to improve bugs and error
class Employee {
  String name = '';
  final EmployeeType type;
  Employee(this.name, this.type);

  void something() {
    switch (type) {
      case EmployeeType.cse:
        print("Software Developer");
      case EmployeeType.eee:
        print("Electronic Engineer");
      case EmployeeType.ipe:
        print("gorib");
    }
  }
}
