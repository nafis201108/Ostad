void main() async {
  //evabeo lekha jay and its much appropiate
  //Future<void> main() async {
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
  return Future(() {
    return 'Heyy!!';
  });
  //async use na kore
}
