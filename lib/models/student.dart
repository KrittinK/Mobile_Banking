class Student {
  final String? id;
  final String? GPA;
  final String? Credit;
  final String? firstName;
  final String? lastName;
  final String? Class;
  final String? Email;
  final String? Phone;
  final String? Address;

  Student({this.id, this.firstName, this.lastName, this.Class  , this.GPA, this.Credit, this.Email, this.Phone, this.Address});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      Class: json['Class'],
      GPA: json['GPA'],
      Credit: json['Credit'],
      Email: json['Email'],
      Phone: json['Phone'],
      Address: json['Address'],
    );
  }
}
