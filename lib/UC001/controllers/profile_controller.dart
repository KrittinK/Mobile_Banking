import 'package:flutter_template/services/get_student_data.dart';

class ProfileController {
  Future<String?> getStudentFirstName({
    required String studentId,
  }) async {
    final studentDataList = await GetStudentDataService().getstudentdata();

    for (final student in studentDataList) {
      if (student.id == studentId) return student.firstName;
    }

    return studentId;
  }

  Future<String?> getStudentLastName({
    required String studentId,
  }) async {
    final studentDataList = await GetStudentDataService().getstudentdata();

    for (final student in studentDataList) {
      if (student.id == studentId) return student.lastName;
    }

    return studentId;
  }
}
