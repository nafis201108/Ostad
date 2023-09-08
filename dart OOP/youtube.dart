class someclass {
  int speed = 50;
  String greeting = 'hello';
  void acclerate() {
    speed += 20;
  }
}

class vehicle extends someclass {
  String model = 'bmwx7';
  bool isEngineWorking = false;
  bool isLightOn = true;
  @override
  int acclerate() {
    // TODO: implement acclerate
    speed += 80;
    return speed;
  }
}

class car extends vehicle {
  int noOfWheels = 4;
  void wheel() {
    print(noOfWheels);
  }
}

class truck extends vehicle {
  int noOfWheels = 8;
  void wheel() {
    print(noOfWheels);
  }
}

void main() {
  someclass xyz = someclass();
  xyz.greeting;
  print(xyz.speed);
  car ferari = car();
  print(ferari.noOfWheels);
  print(ferari.isEngineWorking);

  xyz.acclerate();
  vehicle bal = vehicle();
  print(bal.acclerate());
}
