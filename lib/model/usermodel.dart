import 'dart:convert';

UserModel userFromJson(String str) {
  final jsonData = json.decode(str);
  return UserModel.fromJson(jsonData);
}

String userToJson(UserModel data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class UserModel {
  int id;
  String name;
  String email;
  String username;
  String phone;
  String website;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.phone,
    this.website,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => new UserModel(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    username: json["username"],
    phone: json["phone"],
    website: json["website"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "username": username,
    "phone": phone,
    "website": website,
  };
}