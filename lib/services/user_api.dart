import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/user.dart';

class UserApi {
  static Future<List<User>> fetchUsers() async {
    print('called');
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final respons = await http.get(uri);
    final body = respons.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map(
      (e) {
        return User.fromMap(e);
      },
    ).toList();
    print('complated');
    return users;
  }
}
