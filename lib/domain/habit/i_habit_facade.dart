import 'package:today_and_tomorrow/domain/habit/habit.dart';

abstract class IHabitFacade {
  Future<bool> saveHabit({required Map<String, dynamic> newHabit, int? editId});
  Stream<List<Habit>> getAllHabits();
  Future<bool> deleteHabit({required int id});
  Future<bool> updateHabit({required Habit habit});
  Stream<int> minuteStream();
  List<int> getIdsToUpdate(
      {required List<Habit> habitList, required List<int> idsAlreadyInList});
  List<int> removeIfTime({
    required DateTime date,
    required List<int> idsAlreadyInList,
    required List<Habit> habitList,
  });
}
