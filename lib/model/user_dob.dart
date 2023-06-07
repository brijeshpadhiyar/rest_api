class UserDob {
  final DateTime date;
  final int age;
  UserDob({
    required this.age,
    required this.date,
  });
  factory UserDob.fromMap(Map<String, dynamic> json) {
    return UserDob(
      age: json['age'],
      date: DateTime.parse(json['date']),
    );
  }
}
