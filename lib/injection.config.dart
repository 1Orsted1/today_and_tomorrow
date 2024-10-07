// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'aplication/create/create_bloc.dart' as _i863;
import 'aplication/habit/habit_bloc.dart' as _i491;
import 'domain/create_habit/i_create_habit_facade.dart' as _i151;
import 'domain/habit/i_habit_data_source.dart' as _i1006;
import 'domain/habit/i_habit_facade.dart' as _i559;
import 'infraestructure/core/objectbox/objectbox.g.dart' as _i573;
import 'infraestructure/core/objectbox/objectbox_injectable_module.dart'
    as _i545;
import 'infraestructure/create_habit/create_habit_facade_imp.dart' as _i461;
import 'infraestructure/habit/habit_data_source_imp.dart' as _i1040;
import 'infraestructure/habit/habit_facade_imp.dart' as _i562;
import 'presentation/core/app_router.dart' as _i668;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final objectBoxInjectableModule = _$ObjectBoxInjectableModule();
    gh.factory<_i668.AppRouter>(() => _i668.AppRouter());
    await gh.lazySingletonAsync<_i573.Store>(
      () => objectBoxInjectableModule.store,
      preResolve: true,
    );
    gh.factory<_i151.ICreateHabitFacade>(() => _i461.CreateHabitFacadeImp());
    gh.lazySingleton<_i1006.IHabitDataSource>(
        () => _i1040.HabitDataSourceImp(gh<_i573.Store>()));
    gh.factory<_i863.CreateBloc>(
        () => _i863.CreateBloc(facade: gh<_i151.ICreateHabitFacade>()));
    gh.factory<_i559.IHabitFacade>(
        () => _i562.HabitFacadeImp(dataSource: gh<_i1006.IHabitDataSource>()));
    gh.factory<_i491.HabitBloc>(
        () => _i491.HabitBloc(gh<_i559.IHabitFacade>()));
    return this;
  }
}

class _$ObjectBoxInjectableModule extends _i545.ObjectBoxInjectableModule {}
