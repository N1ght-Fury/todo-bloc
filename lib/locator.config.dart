// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/services/api.dart' as _i3;
import 'logic/cubit/todo_cubit.dart' as _i4;
import 'logic/cubit/user_cubit.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.Api>(_i3.Api());
  gh.singleton<_i4.TodoCubit>(_i4.TodoCubit(get<_i3.Api>()));
  gh.singleton<_i5.UserCubit>(_i5.UserCubit(get<_i3.Api>()));
  return get;
}
