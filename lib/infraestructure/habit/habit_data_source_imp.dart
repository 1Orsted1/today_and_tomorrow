import 'package:injectable/injectable.dart' as injectable;
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/domain/habit/i_habit_data_source.dart';

import '../core/objectbox/objectbox.g.dart';

@injectable.LazySingleton(as: IHabitDataSource)
class HabitDataSourceImp implements IHabitDataSource {
  HabitDataSourceImp(this._store) : _habitBox = _store.box();

  final Store _store;
  final Box<Habit> _habitBox;

  @override
  Future<Habit> getHabit(int habitId) async {
    final qHabit = _habitBox.get(habitId);
    return qHabit!;
  }

  @override
  Future<void> storeNewHabit(Habit newHabit) async {
    final newId = _habitBox.put(newHabit);
    print("this should return somenthing: id: $newId habit: $newHabit ");
  }

  @override
  Stream<List<Habit>> getAllHabits() {
    final qBuilderHabit =
        _habitBox.query().order(Habit_.id, flags: Order.descending);
    // Build and watch the query,
    // set triggerImmediately to emit the query immediately on listen.
    return qBuilderHabit
        .watch(triggerImmediately: true)
        // Map it to a list of tasks to be used by a StreamBuilder.
        .map((query) => query.find());
  }

  @override
  Future<bool> deleteHabit({required int id}) async {
    await _habitBox.removeAsync(id);
    return true;
  }
}