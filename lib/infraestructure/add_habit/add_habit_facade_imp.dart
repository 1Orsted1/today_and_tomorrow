import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/domain/add_habit/habit.dart';
import 'package:today_and_tomorrow/domain/add_habit/i_add_habit_data_source.dart';
import 'package:today_and_tomorrow/domain/add_habit/i_add_habit_facade.dart';

@Injectable(as: IAddHabitFacade)
class AddHabitFacadeImp implements IAddHabitFacade {
  AddHabitFacadeImp({required this.dataSource});
  final IAddHabitDataSource dataSource;

  @override
  Future<Habit> getHabit(int habitId) async {
    return dataSource.getHabit(habitId);
  }

  @override
  Future<void> storeJournal(Habit newHabit) async {
    dataSource.storeJournal(newHabit);
  }
}
