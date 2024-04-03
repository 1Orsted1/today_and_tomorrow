import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/domain/add_habit/habit_model.dart';
import 'package:today_and_tomorrow/domain/add_habit/i_add_habit_facade.dart';

part 'add_habit_event.dart';
part 'add_habit_state.dart';

part 'add_habit_bloc.freezed.dart';

@Injectable()
class AddHabitBloc extends Bloc<AddHabitEvent, AddHabitState> {
  AddHabitBloc(IAddHabitFacade facade) : super(AddHabitState.initial()) {
    on<_NewHabit>((event, emit) {
      print("Values = ${event.name}, ${event.hour}");
      final x = facade.getHabit(1);
    });
  }
}