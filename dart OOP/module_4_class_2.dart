import 'dart:async';

/// Exception/ fault
/// Handle
/// Exception handling
///runtime error
///compile time error
void main() {
//try-catch
//try{} catch(error){}

  try {
    throw yooException();
  } on yooException {
    print('my exception');
  } on TimeoutException {
    print('print timeout exception');
  } catch (error) {
    print("asdf");
  } finally {
    print('Must be done');
  }

  /// dynamic a = 12 / 0;
  /// int b = a + 23;
  /// print(a);
  /// print(b);
  print("Hello world");
  //ekhane print b ta hocche Runtime error

  //exception handling
}

class yooException implements Exception {
  @override
  String toString() {
    return 'This is my exception ';
  }
}
