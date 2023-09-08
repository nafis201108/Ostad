//Expectation Handling

void main() {
  print(10 / 3);
  print(10 / 0);
  try {
    print(10 % 0);
  } on Exception catch (m) {
    print("error occur");
  } finally {
    print("This is a part n role of expectation handling");
  }
  //eta jehetu obastob jinish tai computer er por r nicher
  //ta print korbena
  //tai amra jeta korbo=>( try catch use)

  print("My Name is Nafis");
}
