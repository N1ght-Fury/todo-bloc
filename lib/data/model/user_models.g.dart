// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

_$_SignInUserResult _$$_SignInUserResultFromJson(Map<String, dynamic> json) =>
    _$_SignInUserResult(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$_SignInUserResultToJson(_$_SignInUserResult instance) =>
    <String, dynamic>{
      'user': instance.user,
      'success': instance.success,
    };
