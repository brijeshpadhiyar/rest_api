class UserName {
  final String title;
  final String first;
  final String last;
  UserName({
    required this.title,
    required this.last,
    required this.first,
  });
  factory UserName.fromMap(Map<String, dynamic> json) {
    return UserName(
        title: json['title'], first: json['first'], last: json['last']);
  }
}
