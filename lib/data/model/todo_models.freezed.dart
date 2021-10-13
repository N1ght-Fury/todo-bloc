// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

  _Todo call(
      {int? id, int? userId, required String title, required bool completed}) {
    return _Todo(
      id: id,
      userId: userId,
      title: title,
      completed: completed,
    );
  }

  Todo fromJson(Map<String, Object?> json) {
    return Todo.fromJson(json);
  }
}

/// @nodoc
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({int? id, int? userId, String title, bool completed});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int? userId, String title, bool completed});
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? completed = freezed,
  }) {
    return _then(_Todo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Todo with DiagnosticableTreeMixin implements _Todo {
  _$_Todo({this.id, this.userId, required this.title, required this.completed});

  factory _$_Todo.fromJson(Map<String, dynamic> json) => _$$_TodoFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String title;
  @override
  final bool completed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Todo(id: $id, userId: $userId, title: $title, completed: $completed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Todo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('completed', completed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Todo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, completed);

  @JsonKey(ignore: true)
  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoToJson(this);
  }
}

abstract class _Todo implements Todo {
  factory _Todo(
      {int? id,
      int? userId,
      required String title,
      required bool completed}) = _$_Todo;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  String get title;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$TodoCopyWith<_Todo> get copyWith => throw _privateConstructorUsedError;
}

GetTodosResult _$GetTodosResultFromJson(Map<String, dynamic> json) {
  return _GetTodosResult.fromJson(json);
}

/// @nodoc
class _$GetTodosResultTearOff {
  const _$GetTodosResultTearOff();

  _GetTodosResult call({List<Todo?>? todos, required bool success}) {
    return _GetTodosResult(
      todos: todos,
      success: success,
    );
  }

  GetTodosResult fromJson(Map<String, Object?> json) {
    return GetTodosResult.fromJson(json);
  }
}

/// @nodoc
const $GetTodosResult = _$GetTodosResultTearOff();

/// @nodoc
mixin _$GetTodosResult {
  List<Todo?>? get todos => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTodosResultCopyWith<GetTodosResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTodosResultCopyWith<$Res> {
  factory $GetTodosResultCopyWith(
          GetTodosResult value, $Res Function(GetTodosResult) then) =
      _$GetTodosResultCopyWithImpl<$Res>;
  $Res call({List<Todo?>? todos, bool success});
}

/// @nodoc
class _$GetTodosResultCopyWithImpl<$Res>
    implements $GetTodosResultCopyWith<$Res> {
  _$GetTodosResultCopyWithImpl(this._value, this._then);

  final GetTodosResult _value;
  // ignore: unused_field
  final $Res Function(GetTodosResult) _then;

  @override
  $Res call({
    Object? todos = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GetTodosResultCopyWith<$Res>
    implements $GetTodosResultCopyWith<$Res> {
  factory _$GetTodosResultCopyWith(
          _GetTodosResult value, $Res Function(_GetTodosResult) then) =
      __$GetTodosResultCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo?>? todos, bool success});
}

/// @nodoc
class __$GetTodosResultCopyWithImpl<$Res>
    extends _$GetTodosResultCopyWithImpl<$Res>
    implements _$GetTodosResultCopyWith<$Res> {
  __$GetTodosResultCopyWithImpl(
      _GetTodosResult _value, $Res Function(_GetTodosResult) _then)
      : super(_value, (v) => _then(v as _GetTodosResult));

  @override
  _GetTodosResult get _value => super._value as _GetTodosResult;

  @override
  $Res call({
    Object? todos = freezed,
    Object? success = freezed,
  }) {
    return _then(_GetTodosResult(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetTodosResult
    with DiagnosticableTreeMixin
    implements _GetTodosResult {
  _$_GetTodosResult({this.todos, required this.success});

  factory _$_GetTodosResult.fromJson(Map<String, dynamic> json) =>
      _$$_GetTodosResultFromJson(json);

  @override
  final List<Todo?>? todos;
  @override
  final bool success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetTodosResult(todos: $todos, success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetTodosResult'))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('success', success));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTodosResult &&
            const DeepCollectionEquality().equals(other.todos, todos) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(todos), success);

  @JsonKey(ignore: true)
  @override
  _$GetTodosResultCopyWith<_GetTodosResult> get copyWith =>
      __$GetTodosResultCopyWithImpl<_GetTodosResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetTodosResultToJson(this);
  }
}

abstract class _GetTodosResult implements GetTodosResult {
  factory _GetTodosResult({List<Todo?>? todos, required bool success}) =
      _$_GetTodosResult;

  factory _GetTodosResult.fromJson(Map<String, dynamic> json) =
      _$_GetTodosResult.fromJson;

  @override
  List<Todo?>? get todos;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$GetTodosResultCopyWith<_GetTodosResult> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTodoResult _$CreateTodoResultFromJson(Map<String, dynamic> json) {
  return _CreateTodoResult.fromJson(json);
}

/// @nodoc
class _$CreateTodoResultTearOff {
  const _$CreateTodoResultTearOff();

  _CreateTodoResult call({Todo? todo, required bool success}) {
    return _CreateTodoResult(
      todo: todo,
      success: success,
    );
  }

  CreateTodoResult fromJson(Map<String, Object?> json) {
    return CreateTodoResult.fromJson(json);
  }
}

/// @nodoc
const $CreateTodoResult = _$CreateTodoResultTearOff();

/// @nodoc
mixin _$CreateTodoResult {
  Todo? get todo => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTodoResultCopyWith<CreateTodoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoResultCopyWith<$Res> {
  factory $CreateTodoResultCopyWith(
          CreateTodoResult value, $Res Function(CreateTodoResult) then) =
      _$CreateTodoResultCopyWithImpl<$Res>;
  $Res call({Todo? todo, bool success});

  $TodoCopyWith<$Res>? get todo;
}

/// @nodoc
class _$CreateTodoResultCopyWithImpl<$Res>
    implements $CreateTodoResultCopyWith<$Res> {
  _$CreateTodoResultCopyWithImpl(this._value, this._then);

  final CreateTodoResult _value;
  // ignore: unused_field
  final $Res Function(CreateTodoResult) _then;

  @override
  $Res call({
    Object? todo = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $TodoCopyWith<$Res>? get todo {
    if (_value.todo == null) {
      return null;
    }

    return $TodoCopyWith<$Res>(_value.todo!, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
abstract class _$CreateTodoResultCopyWith<$Res>
    implements $CreateTodoResultCopyWith<$Res> {
  factory _$CreateTodoResultCopyWith(
          _CreateTodoResult value, $Res Function(_CreateTodoResult) then) =
      __$CreateTodoResultCopyWithImpl<$Res>;
  @override
  $Res call({Todo? todo, bool success});

  @override
  $TodoCopyWith<$Res>? get todo;
}

/// @nodoc
class __$CreateTodoResultCopyWithImpl<$Res>
    extends _$CreateTodoResultCopyWithImpl<$Res>
    implements _$CreateTodoResultCopyWith<$Res> {
  __$CreateTodoResultCopyWithImpl(
      _CreateTodoResult _value, $Res Function(_CreateTodoResult) _then)
      : super(_value, (v) => _then(v as _CreateTodoResult));

  @override
  _CreateTodoResult get _value => super._value as _CreateTodoResult;

  @override
  $Res call({
    Object? todo = freezed,
    Object? success = freezed,
  }) {
    return _then(_CreateTodoResult(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateTodoResult
    with DiagnosticableTreeMixin
    implements _CreateTodoResult {
  _$_CreateTodoResult({this.todo, required this.success});

  factory _$_CreateTodoResult.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTodoResultFromJson(json);

  @override
  final Todo? todo;
  @override
  final bool success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTodoResult(todo: $todo, success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateTodoResult'))
      ..add(DiagnosticsProperty('todo', todo))
      ..add(DiagnosticsProperty('success', success));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateTodoResult &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo, success);

  @JsonKey(ignore: true)
  @override
  _$CreateTodoResultCopyWith<_CreateTodoResult> get copyWith =>
      __$CreateTodoResultCopyWithImpl<_CreateTodoResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTodoResultToJson(this);
  }
}

abstract class _CreateTodoResult implements CreateTodoResult {
  factory _CreateTodoResult({Todo? todo, required bool success}) =
      _$_CreateTodoResult;

  factory _CreateTodoResult.fromJson(Map<String, dynamic> json) =
      _$_CreateTodoResult.fromJson;

  @override
  Todo? get todo;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$CreateTodoResultCopyWith<_CreateTodoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTodoResult _$UpdateTodoResultFromJson(Map<String, dynamic> json) {
  return _UpdateTodoResult.fromJson(json);
}

/// @nodoc
class _$UpdateTodoResultTearOff {
  const _$UpdateTodoResultTearOff();

  _UpdateTodoResult call({Todo? todo, required bool success}) {
    return _UpdateTodoResult(
      todo: todo,
      success: success,
    );
  }

  UpdateTodoResult fromJson(Map<String, Object?> json) {
    return UpdateTodoResult.fromJson(json);
  }
}

/// @nodoc
const $UpdateTodoResult = _$UpdateTodoResultTearOff();

/// @nodoc
mixin _$UpdateTodoResult {
  Todo? get todo => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTodoResultCopyWith<UpdateTodoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTodoResultCopyWith<$Res> {
  factory $UpdateTodoResultCopyWith(
          UpdateTodoResult value, $Res Function(UpdateTodoResult) then) =
      _$UpdateTodoResultCopyWithImpl<$Res>;
  $Res call({Todo? todo, bool success});

  $TodoCopyWith<$Res>? get todo;
}

/// @nodoc
class _$UpdateTodoResultCopyWithImpl<$Res>
    implements $UpdateTodoResultCopyWith<$Res> {
  _$UpdateTodoResultCopyWithImpl(this._value, this._then);

  final UpdateTodoResult _value;
  // ignore: unused_field
  final $Res Function(UpdateTodoResult) _then;

  @override
  $Res call({
    Object? todo = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $TodoCopyWith<$Res>? get todo {
    if (_value.todo == null) {
      return null;
    }

    return $TodoCopyWith<$Res>(_value.todo!, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateTodoResultCopyWith<$Res>
    implements $UpdateTodoResultCopyWith<$Res> {
  factory _$UpdateTodoResultCopyWith(
          _UpdateTodoResult value, $Res Function(_UpdateTodoResult) then) =
      __$UpdateTodoResultCopyWithImpl<$Res>;
  @override
  $Res call({Todo? todo, bool success});

  @override
  $TodoCopyWith<$Res>? get todo;
}

/// @nodoc
class __$UpdateTodoResultCopyWithImpl<$Res>
    extends _$UpdateTodoResultCopyWithImpl<$Res>
    implements _$UpdateTodoResultCopyWith<$Res> {
  __$UpdateTodoResultCopyWithImpl(
      _UpdateTodoResult _value, $Res Function(_UpdateTodoResult) _then)
      : super(_value, (v) => _then(v as _UpdateTodoResult));

  @override
  _UpdateTodoResult get _value => super._value as _UpdateTodoResult;

  @override
  $Res call({
    Object? todo = freezed,
    Object? success = freezed,
  }) {
    return _then(_UpdateTodoResult(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateTodoResult
    with DiagnosticableTreeMixin
    implements _UpdateTodoResult {
  _$_UpdateTodoResult({this.todo, required this.success});

  factory _$_UpdateTodoResult.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateTodoResultFromJson(json);

  @override
  final Todo? todo;
  @override
  final bool success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateTodoResult(todo: $todo, success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateTodoResult'))
      ..add(DiagnosticsProperty('todo', todo))
      ..add(DiagnosticsProperty('success', success));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTodoResult &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo, success);

  @JsonKey(ignore: true)
  @override
  _$UpdateTodoResultCopyWith<_UpdateTodoResult> get copyWith =>
      __$UpdateTodoResultCopyWithImpl<_UpdateTodoResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateTodoResultToJson(this);
  }
}

abstract class _UpdateTodoResult implements UpdateTodoResult {
  factory _UpdateTodoResult({Todo? todo, required bool success}) =
      _$_UpdateTodoResult;

  factory _UpdateTodoResult.fromJson(Map<String, dynamic> json) =
      _$_UpdateTodoResult.fromJson;

  @override
  Todo? get todo;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$UpdateTodoResultCopyWith<_UpdateTodoResult> get copyWith =>
      throw _privateConstructorUsedError;
}
