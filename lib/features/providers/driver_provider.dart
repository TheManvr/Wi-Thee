import 'package:flutter/material.dart';
import '../auth/driver/models/student_model.dart';

class DriverProvider extends ChangeNotifier {
  final List<StudentModel> _students = [
    StudentModel(id: '1', name: 'Student A', pickUpLocation: 'Home A'),
    StudentModel(id: '2', name: 'Student B', pickUpLocation: 'Home B'),
    StudentModel(id: '3', name: 'Student C', pickUpLocation: 'Home C'),
  ];

  List<StudentModel> get students => List.unmodifiable(_students);

  void toggleStudentAbsence(String id) {
    final index = _students.indexWhere((s) => s.id == id);
    if (index != -1) {
      _students[index].isAbsent = !_students[index].isAbsent;
      notifyListeners();
    }
  }
}
