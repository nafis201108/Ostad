class Device {
  void operate() {
    print("Operating device...");
  }
}

class phone extends Device {
  String brand = 'Apple';
  @override
  void operate() {
    print("Operating $brand phone...");
  }
}

void main() {
  Device iphone = Device();
  phone Nafis = phone();
  iphone.operate();
  Nafis.operate();
}
