import 'package:today_and_tomorrow/domain/add_habit/habit.dart';

abstract class IAddHabitFacade {
  Future<Habit> getHabit(int habitId);
  Future<void> storeJournal(Habit newHabit);
}
