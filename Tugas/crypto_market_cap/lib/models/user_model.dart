class UserModel {
  int? id;
  String? username;
  String? password;

  UserModel({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    map['password'] = password;
    return map;
  }

  UserModel.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    username = map['username'];
    password = map['password'];
  }
}
