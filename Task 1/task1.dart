void main() {
  const String schoolName = 'Future School';
  final DateTime registrationDate = DateTime.now();
  int studentId = 1024;
  String studentName = 'Ahmed';
  double gpa = 3.85;
  String? email; 
  String? phoneNumber = '0501234567';
  email ??= "ahmed@email.com"; 

  print('School: $schoolName');
  print('Date: ${registrationDate.day}/${registrationDate.month}/${registrationDate.year}');
  print('Student id: $studentId');
  print('Student name: $studentName');
  print('Student GPA: $gpa');
  print('Email: $email');
}