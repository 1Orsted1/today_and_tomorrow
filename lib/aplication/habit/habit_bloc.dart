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
    on<_SaveHabit>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true, operationCompleted: false));
        //todo: handle errors and loading state
        await facade.saveHabit(newHabit: event.formData, editId: event.id);
        emit(state.copyWith(operationCompleted: true));
      } finally {
        emit(state.copyWith(isLoading: false));
      }
    });

    on<_GetAllHabits>((event, emit) async {
      return emit.forEach(facade.getAllHabits(),
          onData: (habitList) => state.copyWith(habitList: habitList));
    });
    on<_DeleteHabit>((event, emit) async {
      await facade.deleteHabit(id: event.id);
    });

    on<_UpdateHabit>((event, emit) async {
      var currentList = List<int>.from(state.waitingToComplete);
      final updatedHabit = event.updatedHabit;
      currentList.add(updatedHabit.id);
      emit(state.copyWith(waitingToComplete: currentList));
      try {
        updatedHabit.completeActivityToday();
        await facade.updateHabit(habit: updatedHabit);
      } finally {
        currentList.removeWhere((element) => element == updatedHabit.id);
        emit(state.copyWith(waitingToComplete: currentList));
      }
    });
  }
}
