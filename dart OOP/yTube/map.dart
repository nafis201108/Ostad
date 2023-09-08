class Studnet {
  String name = '';
  int marks = 0;

  Studnet(this.name, this.marks);
  @override
  String toString() => 'Student:$name';
}

void main() {
  //final List = [10, 15, 40];

  Map<int, String> marks = {10: 'A', 20: 'B', 30: 'C'};
  //print(marks[10]);
  for (int i = 0; i < marks.length; i++) {
    print('${marks.keys.toList()[i]} : ${marks.values.toList()[i]}');
  }
  final Anothermap = {40: 'D', 50: 'E'};
  marks.addAll(Anothermap);
  print(marks);
}
