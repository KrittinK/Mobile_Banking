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

  Future<String?> getStudentClass({
    required String studentId,
  }) async {
    final studentDataList = await GetStudentDataService().getstudentdata();

    for (final student in studentDataList) {
      if (student.id == studentId) return student.Class;
    }

    return studentId;
  }

  Future<String?> getStudentGPA({
    required String studentId,
  }) async {
    final studentDataList = await GetStudentDataService().getstudentdata();

    for (final student in studentDataList) {
      if (student.id == studentId) return student.GPA;
    }

    return studentId;
  }

  Future<String?> getStudentCredit({
    required String studentId,
  }) async {
    final studentDataList = await GetStudentDataService().getstudentdata();

    for (final student in studentDataList) {
      if (student.id == studentId) return student.Credit;
    }

    return studentId;
  }

  Future<String?> getStudentEmail({
    required String studentId,
  }) async {
    final studentDataList = await GetStudentDataService().getstudentdata();

    for (final student in studentDataList) {
      if (student.id == studentId) return student.Email;
    }

    return studentId;
  }

  Future<String?> getStudentPhone({
    required String studentId,
  }) async {
    final studentDataList = await GetStudentDataService().getstudentdata();

    for (final student in studentDataList) {
      if (student.id == studentId) return student.Phone;
    }

    return studentId;
  }

  Future<String?> getStudentAddress({
    required String studentId,
  }) async {
    final studentDataList = await GetStudentDataService().getstudentdata();

    for (final student in studentDataList) {
      if (student.id == studentId) return student.Address;
    }

    return studentId;
  }
}
