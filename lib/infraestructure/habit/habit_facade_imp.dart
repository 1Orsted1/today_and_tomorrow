import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/domain/habit/i_habit_data_source.dart';
import 'package:today_and_tomorrow/domain/habit/i_habit_facade.dart';

@Injectable(as: IHabitFacade)
class HabitFacadeImp implements IHabitFacade {
  HabitFacadeImp({required this.dataSource});
  final IHabitDataSource dataSource;

  @override
  Future<Habit> getHabit(int habitId) async {
    return dataSource.getHabit(habitId);
  }

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
  Habit getHabitById({required int id}) {
    return dataSource.getHabitById(id: id);
  }

  @override
  Future<bool> updateHabit({required Habit habit}) {
    return dataSource.saveHabit(habit);
  }
}
