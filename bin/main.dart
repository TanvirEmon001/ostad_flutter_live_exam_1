import 'student_list.dart';


// Im trying to make this with OOP.

void main() {
  // Input list
  List<Map<String, dynamic>> inputList = [
    {"name": "Tanvir", "scores": [78, 85, 78]},
    {"name": "Emon", "scores": [60, 66, 95]},
    {"name": "Ostad Bhai", "scores": [80, 92, 85]}
  ];

  // Create object and call method
  StudentList students = StudentList(inputList);
  students.displaySortedAverages();
}