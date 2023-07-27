// To parse this JSON data, do
//
//     final userdata = userdataFromJson(jsonString);

import 'dart:convert';

class UserData {
  int userId;
  int id;
  String title;
  String body;

  UserData({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
