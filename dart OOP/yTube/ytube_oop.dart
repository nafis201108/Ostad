void main() {
//We are learning polimorphism
  Animal cat = Cat();
  // Mainclass object = methodof subclass
  cat.sound();
  cat = Dog();
  cat.sound();
  //object = methodof arekta subclass
  //evabe lekha jay cz cat, dog both subclass of Animal
}

//Concept of oop are:
//polymorphism
//Abstraction
//Inheritence
//encapsulation
class Animal {
  void sound() {
    print('Animal making sound');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('cat making sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog is making Sound');
  }
}
