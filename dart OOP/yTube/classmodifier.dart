sealed class Animal {}

class Human implements Animal {}

class Dog implements Animal {}

class Cat implements Animal {}

void main() {
  Animal xyz = Cat();

  switch (xyz) {
    case Dog():
      print('Doggo');
    case Cat():
      print("catto");
    case Human():
      print("manush");
  }
}


//we use sealed class to include all subclas in void main(
//function 
//sealed class is a type of abstract class cz its
// void abcd(); type and can't create constructor like
// Animal asdf =Animal();