class StudentModel {
  final String id;
  final String name;
  final String pickUpLocation;
  bool isAbsent;

  StudentModel({
    required this.id,
    required this.name,
    required this.pickUpLocation,
    this.isAbsent = false,
  });
}
