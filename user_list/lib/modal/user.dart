import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String name, email, avatarUrl, nationality;
  int age;

  User(
      {required this.name,
      required this.email,
      required this.avatarUrl,
      required this.nationality,
      required this.age});

  User.fromJson(Map<String, dynamic> json)
      : name = "${json["name"]["first"]} ${json["name"]["last"]}",
        email = json["email"],
        age = json["dob"]["age"],
        nationality = json["nat"],
        avatarUrl = json["picture"]["large"];
}

Future<List<User>> loadUserList([int numUsers = 50]) async {
  final uri = Uri.parse("https://randomuser.me/api/?results=$numUsers");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonUserList = json["results"];
  List<User> userList = [];
  for (final jsonUser in jsonUserList) {
    userList.add(User.fromJson(jsonUser));
  }
  return userList;
}
