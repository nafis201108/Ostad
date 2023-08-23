void main() {
  /// int a = 23;
  ///print(a);

//  print(sami.age);
  // print(sami.name);

  person sami =
      person(name: 'shawwa', age: 32, address: 'dhaka', gender: 'emale');

  // sami.name = 'samiul haque';
  // sami.age = 24;
  // sami.gender = 'male';
  //sami.address = 'dhaka';
  sami.eating();
  sami.moving(carname: 'mercedes');
  print(sami.name);
  print(sami.age);
  print(sami.gender);
  print(sami.address);
  sami.talking(towhom: 'nafis');
  person a = person(
      name: 'messi',
      age: 45,
      address: 'ctg',
      gender: 'wetfg',
      university: 'BUET');
  person.count = 67;
  print(person.count);
  // a.name = 'a';

  ///  a.age = 2;
  ///a.address = 'rhstr';
  /// a.gender = 'dgs';
  print(a.address);
  a.eating();
  a.moving(carname: 'sedan');
  a.talking();
  print(a.age);
  print(person.count);
  int result = MathOps.add(12, 13);
  int r = MathOps.subs(5, 2);
  print(r);
}

///instance/ object
//person sami = person();

///person sami = person();
///Classname objectname = constructor();
///class
class person {
  static int count = 0;

  ///attributes
  String name;
  int age;
  String address;
  String gender;
  String? university;

  ///constructor
  // person(String name) {
  // print('Instance created $name');
  //}
  // person(this.name, this.age, this.address, this.gender, [this.university]);
  person(
      {required this.name,
      required this.age,
      required this.address,
      required this.gender,
      this.university}) {
    count++;
  }
  //option parameter a [] use kora hoy r ? dara nullable mean kore

  ///functions/methods
//class er vetor function k method bole
  void eating() {
    print('$name is eating');
  }

  void talking({String? towhom}) {
    print('$name is talking $towhom');
  }

  void moving({required String carname}) {
    print('$name is moving in $carname ');
  }
}

class MathOps {
  static int add(int a, int b) {
    return a + b;
  }

  static int subs(int a, int b) {
    return a - b;
  }
}



///class - new datatype/ custom data
///variable creation - object/ instance 
/// class function - method
/// same name to class - constructor