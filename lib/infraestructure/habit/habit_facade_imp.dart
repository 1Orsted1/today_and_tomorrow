import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/domain/habit/i_habit_data_source.dart';
import 'package:today_and_tomorrow/domain/habit/i_habit_facade.dart';

@Injectable(as: IHabitFacade)
class HabitFacadeImp implements IHabitFacade {
  HabitFacadeImp({required this.dataSource});
  final IHabitDataSource dataSource;

  @override
  Future<bool> saveHabit({
    required Map<String, dynamic> newHabit,
    int? editId,
  }) async {
    var habitFromJson = Habit.fromJson(newHabit);
    if (editId != null) {
      final oldHabit = dataSource.getHabitById(id: editId);
      habitFromJson.updateData(oldData: oldHabit);
    } else {
      habitFromJson.setCreationDate();
    }
    return await dataSource.saveHabit(habitFromJson);
  }

  @override
  Stream<List<Habit>> getAllHabits() {
    return dataSource.getAllHabits();
  }

  @override
  Future<bool> deleteHabit({required int id}) async {
    return dataSource.deleteHabit(id: id);
  }

  @override
  Future<bool> updateHabit({required Habit habit}) {
    return dataSource.saveHabit(habit);
  }

  @override
  Stream<int> minuteStream() {
    return Stream<int>.periodic(const Duration(seconds: 1), (tick) {
      return tick;
    });
  }

  @override
  List<int> getIdsToUpdate({
    required List<Habit> habitList,
    required List<int> idsAlreadyInList,
  }) {
    List<int> ids = [];
    final today = DateTime.now();
    for (var element in habitList) {
      if (evaluateDate(
            element,
            today,
          ) &&
          !ids.contains(element.id)) {
        ids.add(element.id);
      }
    }
    return ids;
  }

  @override
  List<int> removeIfTime({
    required DateTime date,
    required List<int> idsAlreadyInList,
    required List<Habit> habitList,
  }) {
    List<int> finalList = idsAlreadyInList;
    for (var element in finalList) {
      bool keepElement = false;
      final habitInList = habitList.firstWhere((habit) => habit.id == element);
      if (habitInList.endingHour != null) {
        keepElement =
            checkEndingHour(now: date, endingHour: habitInList.endingHour!);
      } else {
        keepElement =
            checkAfter15Minutes(now: date, eventHour: habitInList.hour);
      }
      if (keepElement) {
        finalList.removeWhere((id) => id == element);
      }
    }
    return finalList;
  }

  bool checkEndingHour({
    required DateTime now,
    required DateTime endingHour,
  }) {
    return now.hour == endingHour.hour && now.minute == endingHour.minute;
  }

  bool checkAfter15Minutes({
    required DateTime now,
    required DateTime eventHour,
  }) {
    final defaultEndingTime = eventHour.add(const Duration(minutes: 15));
    return now.hour == defaultEndingTime.hour &&
        now.minute == defaultEndingTime.minute;
  }

  bool evaluateDate(Habit habit, DateTime today) {
    DateTime? lastCompletedDate;
    final DateTime? endingHour = habit.endingHour;
    if (habit.completedDays.isNotEmpty) {
      lastCompletedDate = DateTime.parse(habit.completedDays.last);
    }

    final currentHour = today.hour;
    final currentMinute = today.minute;
    final startActivityHour = habit.hour.hour;
    final startActivityMinute = habit.hour.minute;

    if (lastCompletedDate?.day == today.day) return false;
    if (endingHour != null) {
      final endActivityHour = endingHour.hour;
      final endActivityMinute = endingHour.minute;

      final currentMinuteValue = currentMinute + currentHour * 60;
      final startActivityValue = startActivityMinute + startActivityHour * 60;
      final endActivityValue = endActivityMinute + endActivityHour * 60;
      if ((currentHour < startActivityHour ||
          currentMinuteValue < startActivityValue)) return false;
      if ((currentHour <= endActivityHour) &&
          currentMinuteValue <= endActivityValue) {
        return true;
      }
    } else {
      final plus15minDate = habit.hour.add(const Duration(minutes: 1));
      final currentMinuteValue = (currentMinute + currentHour * 60);
      final startActivityValue = startActivityMinute + startActivityHour * 60;

      final endActivityValue = plus15minDate.minute + plus15minDate.hour * 60;
      if ((currentHour < startActivityHour ||
          currentMinuteValue < startActivityValue)) return false;
      if (currentHour <= plus15minDate.hour &&
          currentMinuteValue <= endActivityValue) {
        return true;
      }
    }
    return false;
  }
}
