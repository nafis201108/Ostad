void main() async {
  //evabeo lekha jay and its much appropiate
  //Future<void> main() async {
  print('Shawwa');
  final result = await giveResultAfter2Sec();
  print(result);
  print('Hello');
  print('Greetings');
}
//future hocche j server theke others data load howar
//time  a app or code interface er others output gulo
// execute jeno hoy

//Future<String> giveResultAfter2Sec() async{
//  return 'Hiiiiii';
//}
///evabeo lekha jay abar nicher tar moto o
Future<String> giveResultAfter2Sec() {
  return Future.delayed(Duration(seconds: 2), () async {
    return 'Heyyyy!!';
  });
  //async use na kore
}
