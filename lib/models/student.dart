class Student {
  final String? id;
  final String? first_name;
  final String? last_name;


  Student({this.id, this.first_name, this.last_name});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'], first_name: json['first_name'], last_name: json['last_name'],
      
    );}
}

