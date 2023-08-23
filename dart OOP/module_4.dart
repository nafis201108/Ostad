void main() {
  Car FirstCar = Car('Mercedes', 'CLA200', 2021, 10000);
  print(FirstCar.brand);
  print(FirstCar.model);
  print(FirstCar.year);
  print(FirstCar.milesDriven);

  Car SecondCar = Car('Honda', 'Civic', 2018, 20000);
  print(SecondCar.brand);
  print(SecondCar.model);
  print(SecondCar.year);
  print(SecondCar.milesDriven);

  Car ThirdCar = Car('Toyota', 'Camry', 2012, 55000);
  print(ThirdCar.brand);
  print(ThirdCar.model);
  print(ThirdCar.year);
  print(ThirdCar.milesDriven);
}

class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year, this.milesDriven);
}
