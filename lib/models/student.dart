class Student {
  final String? id;
  final String? gpa;
  final String? credit;
  final String? firstName;
  final String? lastName;
  final String? class1;
  final String? email;
  final String? phone;
  final String? address;

  Student(
      {this.id,
      this.firstName,
      this.lastName,
      this.class1,
      this.gpa,
      this.credit,
      this.email,
      this.phone,
      this.address});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      class1: json['Class'],
      gpa: json['GPA'],
      credit: json['Credit'],
      email: json['Email'],
      phone: json['Phone'],
      address: json['Address'],
    );
  }
}
