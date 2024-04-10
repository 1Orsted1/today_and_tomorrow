import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/domain/habit/i_habit_facade.dart';

part 'habit_event.dart';
part 'habit_state.dart';

part 'habit_bloc.freezed.dart';

@Injectable()
class HabitBloc extends Bloc<HabitEvent, HabitState> {
  HabitBloc(IHabitFacade facade) : super(HabitState.initial()) {
    on<_NewHabit>((event, emit) async {
      try {
        //todo: handle errors and loading state
        await facade.storeNewHabit(event.formData);
        emit(state.copyWith(habitJustCreated: true));
      } finally {
        emit(state.copyWith(habitJustCreated: false));
      }
    });

    on<_GetAllHabits>((event, emit) async {
      return emit.forEach(facade.getAllHabits(),
          onData: (habitList) => state.copyWith(habitList: habitList));
    });

    on<_GetHabitById>((event, emit) {
      //todo: handle errors and loading state
      emit(state.copyWith(isLoading: true));
      final editableHabit = facade.getHabitById(id: event.id);
      emit(state.copyWith(editableHabit: editableHabit));
      emit(state.copyWith(isLoading: false));
    });

    on<_DeleteHabit>((event, emit) async {
      //todo: handle errors and loading state
      await facade.deleteHabit(id: event.id);
    });
  }
}
