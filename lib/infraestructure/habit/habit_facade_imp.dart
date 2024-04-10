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
  Future<void> storeNewHabit(Map<String, dynamic> newHabit) async {
    final habitFromJson = Habit.fromJson(newHabit);
    dataSource.storeNewHabit(habitFromJson);
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
}
