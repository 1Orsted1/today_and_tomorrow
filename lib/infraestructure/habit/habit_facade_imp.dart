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

    final startH = habit.hour.hour;
    final startM = habit.hour.minute;
    final double startT = startH + startM * .100;
    final double currentT = today.hour + today.minute * .100;

    if (lastCompletedDate?.day == today.day) return false;
    if (endingHour != null) {
      int endH = endingHour.hour;
      int endM = endingHour.minute;
      final double endT = endH + endM * .100;
      if (startT > endT) {
        //alter validtion
        return alterValidation(currentT, startT, endT);
      } else {
        //regular validation
        return (currentT >= startT && currentT <= endT);
      }
    } else {
      DateTime plus15minDate = habit.hour.add(const Duration(minutes: 15));
      int endH = plus15minDate.hour;
      int endM = plus15minDate.minute;
      final double endT = endH + endM * .100;
      if (startT > endT) {
        //alter validtion
        return alterValidation(currentT, startT, endT);
      } else {
        //regular validation
        return (currentT >= startT && currentT <= endT);
      }
    }
  }

  bool alterValidation(double totalH, initH, endH) {
    if ((totalH >= initH)) {
      return true;
    } else {
      return (totalH <= endH);
    }
  }
}
