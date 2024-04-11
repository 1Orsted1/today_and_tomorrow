import 'package:today_and_tomorrow/domain/habit/habit.dart';

abstract class IHabitDataSource {
  Future<Habit> getHabit(int habitId);
  Future<bool> saveHabit(Habit newHabit);
  Stream<List<Habit>> getAllHabits();
  Future<bool> deleteHabit({required int id});
  Habit getHabitById({required int id});
}
