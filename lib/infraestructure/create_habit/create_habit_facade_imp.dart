import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/domain/create_habit/form_habit.dart';
import 'package:today_and_tomorrow/domain/create_habit/i_create_habit_facade.dart';

@Injectable(as: ICreateHabitFacade)
class CreateHabitFacadeImp implements ICreateHabitFacade {
  //Mock data
  final Map<String, dynamic> json = {};

  @override
  FormHabit getSteps() {
    return FormHabit.fromJson(json);
  }
}
