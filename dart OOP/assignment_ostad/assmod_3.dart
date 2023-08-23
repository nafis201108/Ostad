void main() {
  Car FirstCar = Car('Mercedes', 'CLA200', 2021, 10000);
  print('Car No:1 ${FirstCar.brand}');
  print(FirstCar.model);
  print(FirstCar.year);
  print(FirstCar.milesDriven);
  FirstCar.miles();
  FirstCar.carbrand();
  FirstCar.carmodel();
  FirstCar.regestrationyear();
  int Age = Car.CarAge(2023, 2021);
  print('CarAge is: $Age');

  /// print(FirstCar.miles);

  Car SecondCar = Car('Honda', 'Civic', 2018, 20000);
  print('Car NO: 2 ${SecondCar.brand}');
  print(SecondCar.model);
  print(SecondCar.year);
  print(SecondCar.milesDriven);

  SecondCar.miles();
  SecondCar.carbrand();
  SecondCar.carmodel();
  SecondCar.regestrationyear();
  int age = Car.CarAge(2023, 2018);
  print('CarAge is: $age');

  Car ThirdCar = Car('Toyota', 'Camry', 2012, 55000);
  print('Car NO: 3 ${ThirdCar.brand}');
  print(ThirdCar.model);
  print(ThirdCar.year);
  print(ThirdCar.milesDriven);

  ThirdCar.miles();

  ThirdCar.carbrand();

  ThirdCar.carmodel();

  ThirdCar.regestrationyear();
  int agE = Car.CarAge(2023, 2012);
  print('CarAge is: $agE');

  print('Numbers of car created: ${Car.totalcar}');
}

class Car {
  static int totalcar = 0;
  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    totalcar++;
  }

  void miles() {
    print('$brand$model car  milage is $milesDriven km');
  }

  void carbrand() {
    print('Car brand is $brand ');
  }

  void carmodel() {
    print('Car model is $model');
  }

  void regestrationyear() {
    print('Car is regestered in $year');
  }

  static int CarAge(int a, int b) {
    return a - b;
  }
}
