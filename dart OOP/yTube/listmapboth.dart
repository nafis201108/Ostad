class Studnet {
  String name = '';
  int marks = 0;

  Studnet(this.name, this.marks);
  @override
  String toString() => 'Student:$name';
}

void main() {
  Map<String, int> marksUser = {'Math': 50, 'Eng': 25, 'Sci': 40};

  List<Map<String, int>> marks = [
    {'cs': 49, 'EE': 91},
    {'ipe': 77, 'Bme': 80},
    marksUser
  ];

  marks.map((e) {
    print(e);
  }).toList();
  //e eta auto dart refer kore <String, int> eta k
  ///eta actually print korar process
  ///.tolist(); eta na chara print korena
  ///cz Itrable hoy ota dart er vaasay lazyloading bole
  ///tai deya lage evabe
  ///Mukhosto or practice korle hoye jabe
  ///tho print ektu tougher
  marks.map((e) {
    e.forEach((key, value) {
      print('$key : $value');
    });
  }).toList();
}
