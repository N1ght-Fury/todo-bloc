part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  const factory UserState.initial() = UserInitial;
  const factory UserState.processing() = UserProcessing;
  const factory UserState.userFailedToLogin() = UserFailedToLogin;
  const factory UserState.userLoggedIn({required User loggedInUser}) = UserLoggedIn;

  static UserState fromJson(Map<String, dynamic> json) => UserState.userLoggedIn(
        loggedInUser: User.fromJson(json),
      );

  static Map<String, dynamic>? toMap(UserState state) => (state as UserLoggedIn).loggedInUser.toJson();
}
