void main() {
  Employee talha = Employee();
  Manager asib = Manager();
  R borolok = R();
  talha.moving();
  asib.moving();
  borolok.moving();
  print(borolok.showSalary());

  ///polymorphysom-eki jinish er vinno vinno rup
  ///Same thing , but difference face
  person nafis = Manager();
  nafis.moving();
  person rafat = R();
  rafat.moving();
}

abstract class person {
  // void moving() {
  //print("moving"); }

  void moving();
}

///bodyless method create er khetre abstract keyword ta lekhte hoy

abstract class CEO extends person {
  double showSalary();
}

///abstract word na lekhle must override korte hobe or class er ageh abstract lekhe dite hobe
///inherit hiring bole etare
class Boss extends person {
  @override
  void moving() {}
}

class R extends CEO {
  @override
  void moving() {
    print("Jet");
  }

  @override
  double showSalary() {
    return 45000.0;
  }
}

///polymorphysom-eki jinish er vinno vinno rup
///Same thing , but difference face
///polymorphysom voidmain( ) a korsi

// multiple inheritence er jonno
//suppose
abstract class sleepable {
  void sleeping();
}

abstract class edible {
  void eating();
}

// suppose employee ekta person and also sleepable
//akhn employee person r sleepable duitai inherit korte chay
// multiple inherit er jonno 'implements' keyword use korte hoy

class Employee extends person implements sleepable, edible {
  @override
  void moving() {
    print("Running and moving");
  }

  @override
  void sleeping() {
    // TODO: implement sleeping
  }

  @override
  void eating() {}
}

class Manager extends Employee {
  @override
  void moving() {
    print("moving by car");
  }

  @override
  void sleeping() {}
}
