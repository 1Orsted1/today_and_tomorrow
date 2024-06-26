// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'aplication/habit/habit_bloc.dart' as _i9;
import 'domain/habit/i_habit_data_source.dart' as _i5;
import 'domain/habit/i_habit_facade.dart' as _i7;
import 'infraestructure/core/objectbox/objectbox.g.dart' as _i4;
import 'infraestructure/core/objectbox/objectbox_injectable_module.dart'
    as _i10;
import 'infraestructure/habit/habit_data_source_imp.dart' as _i6;
import 'infraestructure/habit/habit_facade_imp.dart' as _i8;
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
    final objectBoxInjectableModule = _$ObjectBoxInjectableModule();
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    await gh.lazySingletonAsync<_i4.Store>(
      () => objectBoxInjectableModule.store,
      preResolve: true,
    );
    gh.lazySingleton<_i5.IHabitDataSource>(
        () => _i6.HabitDataSourceImp(gh<_i4.Store>()));
    gh.factory<_i7.IHabitFacade>(
        () => _i8.HabitFacadeImp(dataSource: gh<_i5.IHabitDataSource>()));
    gh.factory<_i9.HabitBloc>(() => _i9.HabitBloc(gh<_i7.IHabitFacade>()));
    return this;
  }
}

class _$ObjectBoxInjectableModule extends _i10.ObjectBoxInjectableModule {}
