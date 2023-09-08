//mixin
//mixes in
void main() {
  Animal anim = Animal();
  // mainclassname object = methodform of MainCLass
  anim.something();
}

mixin Jump {
  int jumping = 10;
}
mixin Scream {
  bool isScreaming = false;
}

class Animal with Jump, Scream {
  void something() {
    print(jumping);
    print(isScreaming);
  }
}

class cat extends Animal {
  void anything() {
    print(jumping);
    //access paise cat class tao mixin er
    //cz cat is the subcls  of Animal class
  }
}





///ONEK TA extends er moto
///like
/// class Jump{
///  int jumping = 10;
///}
///class Animal extends Jump 
///baki sob same
///evabe korle o same e ashto output