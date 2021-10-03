part of 'user_cubit.dart';

@immutable
abstract class UserState {
  final User? user;

  const UserState({
    this.user,
  });
}

class UserInitial extends UserState {}

class UserProcessing extends UserState {}

class UserLoggedIn extends UserState {
  final User? loggedInUser;

  const UserLoggedIn({
    this.loggedInUser,
  });

  factory UserLoggedIn.fromMap(Map<String, dynamic> map) {
    return UserLoggedIn(
      loggedInUser: User.fromMap(map),
    );
  }

  factory UserLoggedIn.fromJson(String source) => UserLoggedIn.fromMap(json.decode(source));

  String toJson() => user!.toJson();
}

class UserFailedToLogin extends UserState {}
