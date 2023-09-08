//List is a abstract class things
//not possible this way:
// List list=List();
//Necessary to store value
void main() {
  // String greeting = 'halo';
  // List<double> list = [10, 20, 30];

  ///List<Object> ......etay nonnullable value
  ///pass koranu jay, but dynamic a j kono type including
  ///nullable and non nullable
//List<dynamic> list=[10,20,30,'String',...]
//mane dyncamic word lekhle multiple jinish nite parbe int badeo

  /// print(list[0]);
  /// print(greeting[1]);
  //0 index : h, 1 index :a ,......
  List<Student> students = [
    Student('Nafis', 10),
    Student('Kuddus', 20),
    Student('Rahim', 30),
    Student('mou', 40)
  ];
  //print(students);

//1. A new list of students empty
//2. run a for loop
//3. check if the grade of a student greater or eq than 20
//4. if true, student go to new list
//5. print list out of for loop

  /// List<Student> filteredstudent = [];
  /// for (int i = 0; i < students.length; i++) {
  ///   if (students[i].marks >= 20) {
  ///    filteredstudent.add(students[i]);
  ///    print(filteredstudent);
  //  }

  List<Student> filteredstudent = [];
  for (final Student in students) {
    if (Student.marks >= 20) {
      filteredstudent.add(Student);
      print(filteredstudent);
    }
  }

  /// students[3] = Student('maisha', 50);
  /// print(students);
  ///  students.add(Student('shawwa', 60));
  /// print(students);
  //j kono index a name bosayte chaile
  /// students.insert(0, Student('masum', 70));
  /// print(students);
  /// students.remove('masum');
  /// print(students);
  //remove hoynai, processs hocche
  /// final masumdelete = Student('masum');
  /// students.remove('masum');
  /// print(students);
  //delete ta noman bhai er video theke dekhe niyo

  //Student xyz = students[];
  //print(xyz.name);

  ///Structure
  /// classname object = List er objectname[];

  //print(students[1]);
}

class Student {
  String name = '';
  int marks = 0;
  Student(this.name, this.marks);
  @override
  String toString() => 'Studentname:$name';
}
