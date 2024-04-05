import 'package:today_and_tomorrow/domain/add_habit/habit.dart';

abstract class IAddHabitDataSource {
  Future<Habit> getHabit(int habitId);
  Future<void> storeJournal(Habit newHabit);
  Stream<List<Habit>> getAllHabits();
}
