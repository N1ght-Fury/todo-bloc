import 'dart:convert';

class User {
  int? id;
  String nameSurname;
  String email;

  User({
    this.id,
    this.nameSurname = '',
    this.email = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': nameSurname,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? 0,
      nameSurname: map['name'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(id: $id, name: $nameSurname, email: $email)';
}

class SignInUserResult {
  User? user;
  bool success;

  SignInUserResult({
    this.user,
    required this.success,
  });

  SignInUserResult.fromJson({User? user, required bool success})
      : user = user,
        success = success;

  Map<String, dynamic> toJson() => {
        'user': user,
        'success': success,
      };
}
