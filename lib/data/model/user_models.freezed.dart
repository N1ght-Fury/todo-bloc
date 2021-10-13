// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call({int? id, String? name, String? email}) {
    return _User(
      id: id,
      name: name,
      email: email,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? email});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  _$_User({this.id, this.name, this.email});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User({int? id, String? name, String? email}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

SignInUserResult _$SignInUserResultFromJson(Map<String, dynamic> json) {
  return _SignInUserResult.fromJson(json);
}

/// @nodoc
class _$SignInUserResultTearOff {
  const _$SignInUserResultTearOff();

  _SignInUserResult call({User? user, required bool success}) {
    return _SignInUserResult(
      user: user,
      success: success,
    );
  }

  SignInUserResult fromJson(Map<String, Object?> json) {
    return SignInUserResult.fromJson(json);
  }
}

/// @nodoc
const $SignInUserResult = _$SignInUserResultTearOff();

/// @nodoc
mixin _$SignInUserResult {
  User? get user => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInUserResultCopyWith<SignInUserResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInUserResultCopyWith<$Res> {
  factory $SignInUserResultCopyWith(
          SignInUserResult value, $Res Function(SignInUserResult) then) =
      _$SignInUserResultCopyWithImpl<$Res>;
  $Res call({User? user, bool success});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SignInUserResultCopyWithImpl<$Res>
    implements $SignInUserResultCopyWith<$Res> {
  _$SignInUserResultCopyWithImpl(this._value, this._then);

  final SignInUserResult _value;
  // ignore: unused_field
  final $Res Function(SignInUserResult) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SignInUserResultCopyWith<$Res>
    implements $SignInUserResultCopyWith<$Res> {
  factory _$SignInUserResultCopyWith(
          _SignInUserResult value, $Res Function(_SignInUserResult) then) =
      __$SignInUserResultCopyWithImpl<$Res>;
  @override
  $Res call({User? user, bool success});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$SignInUserResultCopyWithImpl<$Res>
    extends _$SignInUserResultCopyWithImpl<$Res>
    implements _$SignInUserResultCopyWith<$Res> {
  __$SignInUserResultCopyWithImpl(
      _SignInUserResult _value, $Res Function(_SignInUserResult) _then)
      : super(_value, (v) => _then(v as _SignInUserResult));

  @override
  _SignInUserResult get _value => super._value as _SignInUserResult;

  @override
  $Res call({
    Object? user = freezed,
    Object? success = freezed,
  }) {
    return _then(_SignInUserResult(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInUserResult
    with DiagnosticableTreeMixin
    implements _SignInUserResult {
  _$_SignInUserResult({this.user, required this.success});

  factory _$_SignInUserResult.fromJson(Map<String, dynamic> json) =>
      _$$_SignInUserResultFromJson(json);

  @override
  final User? user;
  @override
  final bool success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInUserResult(user: $user, success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInUserResult'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('success', success));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInUserResult &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, success);

  @JsonKey(ignore: true)
  @override
  _$SignInUserResultCopyWith<_SignInUserResult> get copyWith =>
      __$SignInUserResultCopyWithImpl<_SignInUserResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInUserResultToJson(this);
  }
}

abstract class _SignInUserResult implements SignInUserResult {
  factory _SignInUserResult({User? user, required bool success}) =
      _$_SignInUserResult;

  factory _SignInUserResult.fromJson(Map<String, dynamic> json) =
      _$_SignInUserResult.fromJson;

  @override
  User? get user;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$SignInUserResultCopyWith<_SignInUserResult> get copyWith =>
      throw _privateConstructorUsedError;
}
