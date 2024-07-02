// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'aplication/habit/habit_bloc.dart' as _i10;
import 'domain/habit/i_habit_data_source.dart' as _i6;
import 'domain/habit/i_habit_facade.dart' as _i8;
import 'infraestructure/core/local_notifcations_module.dart' as _i11;
import 'infraestructure/core/objectbox/objectbox.g.dart' as _i5;
import 'infraestructure/core/objectbox/objectbox_injectable_module.dart'
    as _i12;
import 'infraestructure/habit/habit_data_source_imp.dart' as _i7;
import 'infraestructure/habit/habit_facade_imp.dart' as _i9;
import 'presentation/core/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final localNotificationsModule = _$LocalNotificationsModule();
    final objectBoxInjectableModule = _$ObjectBoxInjectableModule();
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    gh.lazySingleton<_i4.FlutterLocalNotificationsPlugin>(
        () => localNotificationsModule.flutterLocalNotificationsPlugin);
    await gh.lazySingletonAsync<_i5.Store>(
      () => objectBoxInjectableModule.store,
      preResolve: true,
    );
    gh.lazySingleton<_i6.IHabitDataSource>(
        () => _i7.HabitDataSourceImp(gh<_i5.Store>()));
    gh.factory<_i8.IHabitFacade>(
        () => _i9.HabitFacadeImp(dataSource: gh<_i6.IHabitDataSource>()));
    gh.factory<_i10.HabitBloc>(() => _i10.HabitBloc(gh<_i8.IHabitFacade>()));
    return this;
  }
}

class _$LocalNotificationsModule extends _i11.LocalNotificationsModule {}

class _$ObjectBoxInjectableModule extends _i12.ObjectBoxInjectableModule {}
