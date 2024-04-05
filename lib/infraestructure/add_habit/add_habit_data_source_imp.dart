import 'package:injectable/injectable.dart' as injectable;
import 'package:today_and_tomorrow/domain/add_habit/habit.dart';
import 'package:today_and_tomorrow/domain/add_habit/i_add_habit_data_source.dart';
import 'package:today_and_tomorrow/objectbox.g.dart';

@injectable.LazySingleton(as: IAddHabitDataSource)
class AddHabitDataSourceImp implements IAddHabitDataSource {
  AddHabitDataSourceImp(this._store) : _habitBox = _store.box();

  final Store _store;
  final Box<Habit> _habitBox;

  @override
  Future<Habit> getHabit(int habitId) async {
    final qHabit = _habitBox.get(1);

    return Habit("cosa");
  }

  @override
  Future<void> storeJournal(Habit newHabit) async {
    final newId = _habitBox.put(newHabit);
    print("this should return somenthing: $newHabit ");
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
}
