class UserPicture {
  final String large;
  final String mediam;
  final String thumbnail;
  UserPicture(
      {required this.large, required this.mediam, required this.thumbnail});

  factory UserPicture.fromMap(Map<String, dynamic> json) {
    return UserPicture(
      large: json['large'],
      mediam: json['medium'],
      thumbnail:json['thumbnail'] 
    );
  }
}
