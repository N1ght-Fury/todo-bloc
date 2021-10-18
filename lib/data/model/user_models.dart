import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_models.freezed.dart';
part 'user_models.g.dart';

@freezed
class User with _$User {
  factory User({int? id, String? name, String? email}) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class SignInUserResult with _$SignInUserResult {
  factory SignInUserResult({User? user, required bool success}) = _SignInUserResult;
  factory SignInUserResult.fromJson(Map<String, dynamic> json) => _$SignInUserResultFromJson(json);
}
