class StudentIdModel {
  String? name;
  String? className;
  int? rollNo;
  String? contactNo;
  String? imagePath;

  StudentIdModel({
    required this.name,
    required this.className,
    required this.rollNo,
    required this.contactNo,
    this.imagePath,
  });
}
