import 'package:today_and_tomorrow/domain/habit/habit.dart';

abstract class IHabitFacade {
  Future<Habit> getHabit(int habitId);
  Future<void> storeNewHabit(Map<String, dynamic> newHabit);
  Stream<List<Habit>> getAllHabits();
  Future<bool> deleteHabit({required int id});
  Habit getHabitById({required int id});
}
