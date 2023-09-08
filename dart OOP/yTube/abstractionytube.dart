void main() {
//We are learning polimorphism
  Animal cat = Cat();
  // Mainclass object = methodof subclass
  cat.sound();

  Animal dog = Dog();
  dog.sound();
  //Animal habijabi = Animal();
  //abstract classs er khetre amon hoynaaa
  //abstraction hides complexicity
}

//Concept of oop are:
//polymorphism
//Abstraction
//Inheritence
//encapsulation
abstract class Animal {
  void sound();
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
