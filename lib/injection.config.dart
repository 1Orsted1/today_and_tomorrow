// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'aplication/add_habit/bloc/add_habit_bloc.dart' as _i9;
import 'domain/add_habit/i_add_habit_data_source.dart' as _i5;
import 'domain/add_habit/i_add_habit_facade.dart' as _i7;
import 'infraestructure/add_habit/add_habit_data_source_imp.dart' as _i6;
import 'infraestructure/add_habit/add_habit_facade_imp.dart' as _i8;
import 'infraestructure/core/objectbox_injectable_module.dart' as _i10;
import 'objectbox.g.dart' as _i4;
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
    gh.lazySingleton<_i5.IAddHabitDataSource>(
        () => _i6.AddHabitDataSourceImp(gh<_i4.Store>()));
    gh.factory<_i7.IAddHabitFacade>(
        () => _i8.AddHabitFacadeImp(dataSource: gh<_i5.IAddHabitDataSource>()));
    gh.factory<_i9.AddHabitBloc>(
        () => _i9.AddHabitBloc(gh<_i7.IAddHabitFacade>()));
    return this;
  }
}

class _$ObjectBoxInjectableModule extends _i10.ObjectBoxInjectableModule {}
