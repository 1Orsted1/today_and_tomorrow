import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/domain/add_habit/habit.dart';
import 'package:today_and_tomorrow/domain/add_habit/i_add_habit_data_source.dart';
import 'package:today_and_tomorrow/domain/add_habit/i_add_habit_facade.dart';
import 'package:today_and_tomorrow/objectbox.g.dart';

@LazySingleton(as: IAddHabitDataSource)
class AddHabitDataSourceImp implements IAddHabitDataSource {
  AddHabitDataSourceImp(this._store) : _box = _store.box();

  final Store _store;
  final Box<Habit> _box;

  @override
  Future<Habit> getHabit(int habitId) async {
    final x = _store.box<Habit>();
    final y = x.getAll();
    print("this should return somenthing: $y");
    return Habit("cosa");
  }

  @override
  Future<void> storeJournal(Habit newHabit) {
    // TODO: implement storeJournal
    throw UnimplementedError();
  }
}
