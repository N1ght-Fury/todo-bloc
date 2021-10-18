import 'package:get_it/get_it.dart';

import 'data/services/api.dart';
import 'logic/cubit/user_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => Api());
  getIt.registerFactory<UserCubit>(() => UserCubit());
}
