import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/objectbox.g.dart';

@module
abstract class ObjectBoxInjectableModule {
  @preResolve // <<<<<<<<<<<<< needed for async init
  @lazySingleton
  Future<Store> get store async => await openStore();
}
