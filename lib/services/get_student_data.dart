import 'dart:convert';
import 'package:flutter_template/models/student.dart';
import 'package:http/http.dart' as http;

class GetStudentDataService {
  Future<List<Student>> getstudentdata() async {
    final response = await http.get
    (Uri.parse('https://mb-backend-rawipol19.cloud.okteto.net/parent'));
    if (response.statusCode == 200) {
      final data = response.body;
      final jsonData = jsonDecode(data);

      final List<Student> studentDataList = jsonData[0]['Student'].
      map<Student>((student) => Student.fromJson(student)).toList();

      return studentDataList;
    } else {
      throw Exception('Failed to load album');
    }
  }
}

